import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/core/widgets/custom_app_bar.dart';
import 'package:gym_buddy/features/workout/domain/entity/exercise_entity.dart';
import 'package:gym_buddy/features/workout/domain/entity/set_entity.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/presentation/bloc/workout_bloc.dart';
import 'package:gym_buddy/injections.dart';
import 'package:uuid/uuid.dart';

class SessionScreen extends StatefulWidget {
  final String workoutId;
  final WorkoutEntity? workout;

  const SessionScreen({super.key, required this.workoutId, this.workout});

  @override
  State<SessionScreen> createState() => _SessionScreenState();
}

class _SessionScreenState extends State<SessionScreen> {
  WorkoutEntity? _workout;
  final _exerciseNameController = TextEditingController();
  final _setsController = TextEditingController();
  final _repsController = TextEditingController();
  final _weightController = TextEditingController();

  @override
  void initState() {
    super.initState();
    print('SessionScreen initState called with workoutId: ${widget.workoutId}');

    if (widget.workout != null) {
      print('SessionScreen received workout data directly');
      setState(() {
        _workout = widget.workout;
      });
    } else {
      print('SessionScreen triggering LoadWorkouts event');
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.read<WorkoutBloc>().add(WorkoutEvent.loadWorkouts());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<WorkoutBloc>(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              CustomAppBar(
                leftWidget: IconButton(
                  onPressed: () => context.pop(),
                  icon: Platform.isAndroid
                      ? const Icon(Icons.arrow_back)
                      : const Icon(CupertinoIcons.back),
                ),
                rightWidget: _workout != null && !_workout!.isCompleted
                    ? TextButton(
                        onPressed: _endSession,
                        child: const Text('End Session'),
                      )
                    : null,
              ),
              Expanded(
                child: BlocConsumer<WorkoutBloc, WorkoutState>(
                  listener: (context, state) {
                    print(
                      'SessionScreen BlocConsumer listener triggered with state: $state',
                    );
                    state.whenOrNull(
                      loaded: (workouts) {
                        try {
                          print('Looking for workout ID: ${widget.workoutId}');
                          print(
                            'Available workout IDs: ${workouts.map((w) => w.workoutId).toList()}',
                          );

                          final workout = workouts.firstWhere(
                            (w) => w.workoutId == widget.workoutId,
                          );
                          setState(() {
                            _workout = workout;
                          });
                        } catch (e) {
                          print('Error finding workout: $e');
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Workout not found')),
                          );
                          context.pop();
                        }
                      },
                      failure: (message) {
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text(message)));
                      },
                    );
                  },
                  builder: (context, state) {
                    if (_workout == null) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    return _buildSessionContent();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSessionContent() {
    return Column(
      children: [
        _buildSessionHeader(),
        const Divider(),
        Expanded(
          child: _workout!.exercises.isEmpty
              ? _buildEmptyState()
              : _buildExercisesList(),
        ),
        if (!_workout!.isCompleted) _buildAddExerciseButton(),
      ],
    );
  }

  Widget _buildSessionHeader() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _workout!.name,
            style: Theme.of(
              context,
            ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            'Started at: ${_formatTime(_workout!.startTime)}',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          if (_workout!.isCompleted && _workout!.duration != null) ...[
            const SizedBox(height: 4),
            Text(
              'Duration: ${_formatDuration(_workout!.duration!)}',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.fitness_center_outlined,
            size: 64,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          const SizedBox(height: 16),
          Text(
            'No exercises yet',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(
            'Add your first exercise to start tracking!',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildExercisesList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: _workout!.exercises.length,
      itemBuilder: (context, index) {
        final exercise = _workout!.exercises[index];
        return _buildExerciseCard(exercise);
      },
    );
  }

  Widget _buildExerciseCard(ExerciseEntity exercise) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    exercise.name,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                if (!_workout!.isCompleted)
                  IconButton(
                    onPressed: () => _removeExercise(exercise),
                    icon: const Icon(Icons.delete),
                    color: Theme.of(context).colorScheme.error,
                  ),
              ],
            ),
            const SizedBox(height: 8),
            ...exercise.sets.asMap().entries.map((entry) {
              final setIndex = entry.key;
              final set = entry.value;
              return _buildSetRow(exercise, setIndex, set);
            }),
            if (!_workout!.isCompleted) ...[
              const SizedBox(height: 8),
              TextButton.icon(
                onPressed: () => _addSet(exercise),
                icon: const Icon(Icons.add),
                label: const Text('Add Set'),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildSetRow(ExerciseEntity exercise, int setIndex, SetEntity set) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(
            width: 40,
            child: Text(
              '${setIndex + 1}',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: _workout!.isCompleted
                      ? Text('${set.reps} reps')
                      : InkWell(
                          onTap: () => _editSet(exercise, setIndex, set),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 12,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.outline,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text('${set.reps} reps'),
                          ),
                        ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _workout!.isCompleted
                      ? Text('${set.weight} kg')
                      : InkWell(
                          onTap: () => _editSet(exercise, setIndex, set),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 12,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.outline,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text('${set.weight} kg'),
                          ),
                        ),
                ),
                if (!_workout!.isCompleted)
                  IconButton(
                    onPressed: () => _removeSet(exercise, setIndex),
                    icon: const Icon(Icons.remove_circle_outline),
                    color: Theme.of(context).colorScheme.error,
                    iconSize: 20,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddExerciseButton() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: ElevatedButton.icon(
        onPressed: _showAddExerciseDialog,
        icon: const Icon(Icons.add),
        label: const Text('Add Exercise'),
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 48),
        ),
      ),
    );
  }

  void _showAddExerciseDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add Exercise'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _exerciseNameController,
              decoration: const InputDecoration(
                labelText: 'Exercise Name',
                hintText: 'e.g., Bench Press',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _setsController,
              decoration: const InputDecoration(
                labelText: 'Number of Sets',
                hintText: '3',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _repsController,
              decoration: const InputDecoration(
                labelText: 'Reps per Set',
                hintText: '10',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _weightController,
              decoration: const InputDecoration(
                labelText: 'Weight (kg)',
                hintText: '50',
              ),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(onPressed: _addExercise, child: const Text('Add')),
        ],
      ),
    );
  }

  void _addExercise() {
    final name = _exerciseNameController.text.trim();
    final setsCount = int.tryParse(_setsController.text) ?? 1;
    final reps = int.tryParse(_repsController.text) ?? 10;
    final weight = double.tryParse(_weightController.text) ?? 0.0;

    if (name.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter exercise name')),
      );
      return;
    }

    final sets = List.generate(
      setsCount,
      (index) => SetEntity(reps: reps, weight: weight, isCompleted: false),
    );

    final exercise = ExerciseEntity(
      exerciseId: const Uuid().v4(),
      name: name,
      sets: sets,
      createdAt: DateTime.now(),
    );

    final updatedWorkout = _workout!.copyWith(
      exercises: [..._workout!.exercises, exercise],
      updatedAt: DateTime.now(),
    );

    setState(() {
      _workout = updatedWorkout;
    });

    context.read<WorkoutBloc>().add(
      WorkoutEvent.updateWorkoutExercises(updatedWorkout),
    );

    _clearControllers();
    Navigator.of(context).pop();
  }

  void _addSet(ExerciseEntity exercise) {
    final lastSet = exercise.sets.isNotEmpty
        ? exercise.sets.last
        : const SetEntity(reps: 10, weight: 0.0);

    final newSet = SetEntity(
      reps: lastSet.reps,
      weight: lastSet.weight,
      isCompleted: false,
    );

    final updatedExercise = exercise.copyWith(sets: [...exercise.sets, newSet]);

    final exerciseIndex = _workout!.exercises.indexOf(exercise);
    final updatedExercises = List<ExerciseEntity>.from(_workout!.exercises);
    updatedExercises[exerciseIndex] = updatedExercise;

    final updatedWorkout = _workout!.copyWith(
      exercises: updatedExercises,
      updatedAt: DateTime.now(),
    );

    setState(() {
      _workout = updatedWorkout;
    });

    context.read<WorkoutBloc>().add(
      WorkoutEvent.updateWorkoutExercises(updatedWorkout),
    );
  }

  void _removeSet(ExerciseEntity exercise, int setIndex) {
    final updatedSets = List<SetEntity>.from(exercise.sets);
    updatedSets.removeAt(setIndex);

    final updatedExercise = exercise.copyWith(sets: updatedSets);

    final exerciseIndex = _workout!.exercises.indexOf(exercise);
    final updatedExercises = List<ExerciseEntity>.from(_workout!.exercises);
    updatedExercises[exerciseIndex] = updatedExercise;

    final updatedWorkout = _workout!.copyWith(
      exercises: updatedExercises,
      updatedAt: DateTime.now(),
    );

    setState(() {
      _workout = updatedWorkout;
    });

    context.read<WorkoutBloc>().add(
      WorkoutEvent.updateWorkoutExercises(updatedWorkout),
    );
  }

  void _removeExercise(ExerciseEntity exercise) {
    final updatedExercises = _workout!.exercises
        .where((e) => e != exercise)
        .toList();

    final updatedWorkout = _workout!.copyWith(
      exercises: updatedExercises,
      updatedAt: DateTime.now(),
    );

    setState(() {
      _workout = updatedWorkout;
    });

    context.read<WorkoutBloc>().add(
      WorkoutEvent.updateWorkoutExercises(updatedWorkout),
    );
  }

  void _editSet(ExerciseEntity exercise, int setIndex, SetEntity set) {
    final repsController = TextEditingController(text: set.reps.toString());
    final weightController = TextEditingController(text: set.weight.toString());

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Edit Set ${setIndex + 1}'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: repsController,
              decoration: const InputDecoration(
                labelText: 'Reps',
                hintText: '12',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: weightController,
              decoration: const InputDecoration(
                labelText: 'Weight (kg)',
                hintText: '60',
              ),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              final reps = int.tryParse(repsController.text) ?? set.reps;
              final weight =
                  double.tryParse(weightController.text) ?? set.weight;

              final updatedSet = set.copyWith(reps: reps, weight: weight);
              final updatedSets = List<SetEntity>.from(exercise.sets);
              updatedSets[setIndex] = updatedSet;

              final updatedExercise = exercise.copyWith(sets: updatedSets);
              final exerciseIndex = _workout!.exercises.indexOf(exercise);
              final updatedExercises = List<ExerciseEntity>.from(
                _workout!.exercises,
              );
              updatedExercises[exerciseIndex] = updatedExercise;

              final updatedWorkout = _workout!.copyWith(
                exercises: updatedExercises,
                updatedAt: DateTime.now(),
              );

              setState(() {
                _workout = updatedWorkout;
              });

              context.read<WorkoutBloc>().add(
                WorkoutEvent.updateWorkoutExercises(updatedWorkout),
              );

              repsController.dispose();
              weightController.dispose();
              Navigator.of(context).pop();
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  void _endSession() {
    final endTime = DateTime.now();
    final duration = endTime.difference(_workout!.startTime).inMinutes;

    final updatedWorkout = _workout!.copyWith(
      isCompleted: true,
      duration: duration,
      updatedAt: endTime,
    );

    setState(() {
      _workout = updatedWorkout;
    });

    context.read<WorkoutBloc>().add(WorkoutEvent.updateWorkout(updatedWorkout));

    showAdaptiveDialog(
      context: context,
      builder: (context) => AlertDialog.adaptive(
        title: const Text('Session Completed!'),
        content: Text(
          'Great job! Your workout lasted ${_formatDuration(duration)}.',
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              context.pop();
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _clearControllers() {
    _exerciseNameController.clear();
    _setsController.clear();
    _repsController.clear();
    _weightController.clear();
  }

  String _formatTime(DateTime time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }

  String _formatDuration(int minutes) {
    final hours = minutes ~/ 60;
    final mins = minutes % 60;
    if (hours > 0) {
      return '${hours}h ${mins}m';
    }
    return '${mins}m';
  }

  @override
  void dispose() {
    _exerciseNameController.dispose();
    _setsController.dispose();
    _repsController.dispose();
    _weightController.dispose();
    super.dispose();
  }
}
