import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/core/widgets/custom_app_bar.dart';
import 'package:gym_buddy/features/workout/domain/entity/exercise_entity.dart';
import 'package:gym_buddy/features/workout/domain/entity/set_entity.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/domain/params/add_exercise_params.dart';
import 'package:gym_buddy/features/workout/domain/params/end_workout_session_params.dart';
import 'package:gym_buddy/features/workout/domain/params/remove_exercise_params.dart';
import 'package:gym_buddy/features/workout/domain/params/update_exercise_params.dart';
import 'package:gym_buddy/features/workout/presentation/bloc/workout_bloc.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/add_exercise_dialog.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/edit_set_dialog.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/exercise_card.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/workout_empty_state.dart';
import 'package:uuid/uuid.dart';

class SessionScreen extends StatefulWidget {
  final String workoutId;
  final WorkoutEntity? workout;

  const SessionScreen({super.key, required this.workoutId, this.workout});

  @override
  State<SessionScreen> createState() => _SessionScreenState();
}

class _SessionScreenState extends State<SessionScreen> {
  @override
  void initState() {
    super.initState();

    if (widget.workout == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          context.read<WorkoutBloc>().add(const WorkoutEvent.loadWorkouts());
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              rightWidget: BlocBuilder<WorkoutBloc, WorkoutState>(
                builder: (context, state) {
                  if (state is Loaded) {
                    try {
                      final workout = state.workouts.firstWhere(
                        (w) => w.workoutId == widget.workoutId,
                      );
                      return !workout.isCompleted
                          ? TextButton(
                              onPressed: () => _endSession(workout),
                              child: const Text('End Session'),
                            )
                          : const SizedBox.shrink();
                    } catch (e) {
                      return const SizedBox.shrink();
                    }
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
            Expanded(
              child: BlocBuilder<WorkoutBloc, WorkoutState>(
                builder: (context, state) {
                  if (state is Loading || state is Initial) {
                    return const Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  }

                  if (state is Loaded) {
                    try {
                      final workout = state.workouts.firstWhere(
                        (w) => w.workoutId == widget.workoutId,
                      );
                      return _buildSessionContent(workout);
                    } catch (e) {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Workout not found')),
                        );
                        context.pop();
                      });
                      return const Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    }
                  }

                  if (state is Updated) {
                    return _buildSessionContent(state.workout);
                  }

                  if (state is Failure) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text(state.message)));
                    });
                    return Center(child: Text('Error: ${state.message}'));
                  }

                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSessionContent(WorkoutEntity workout) {
    return Column(
      children: [
        _buildSessionHeader(workout),
        const Divider(),
        Expanded(
          child: workout.exercises.isEmpty
              ? const WorkoutEmptyState(
                  title: 'No exercises yet',
                  subtitle: 'Add your first exercise to start tracking!',
                  icon: Icons.fitness_center_outlined,
                )
              : _buildExercisesList(workout),
        ),
        if (!workout.isCompleted) _buildAddExerciseButton(workout),
      ],
    );
  }

  Widget _buildSessionHeader(WorkoutEntity workout) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            workout.name,
            style: Theme.of(
              context,
            ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            'Started at: ${_formatTime(workout.startTime)}',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          if (workout.isCompleted && workout.duration != null) ...[
            const SizedBox(height: 4),
            Text(
              'Duration: ${_formatDuration(workout.duration!)}',
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

  Widget _buildExercisesList(WorkoutEntity workout) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: workout.exercises.length,
      itemBuilder: (context, index) {
        final exercise = workout.exercises[index];
        return ExerciseCard(
          exercise: exercise,
          workout: workout,
          onRemoveExercise: !workout.isCompleted
              ? () => _removeExercise(workout, exercise)
              : null,
          onAddSet: !workout.isCompleted
              ? () => _addSet(workout, exercise)
              : null,
          onEditSet: !workout.isCompleted
              ? (exercise, setIndex, set) =>
                    _editSet(workout, exercise, setIndex, set)
              : null,
          onRemoveSet: !workout.isCompleted
              ? (exercise, setIndex) => _removeSet(workout, exercise, setIndex)
              : null,
        );
      },
    );
  }

  Widget _buildAddExerciseButton(WorkoutEntity workout) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: ElevatedButton.icon(
        onPressed: () => _showAddExerciseDialog(workout),
        icon: const Icon(Icons.add),
        label: const Text('Add Exercise'),
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 48),
        ),
      ),
    );
  }

  void _showAddExerciseDialog(WorkoutEntity workout) {
    showDialog(
      context: context,
      builder: (context) => AddExerciseDialog(
        onAddExercise: (name, setsCount, reps, weight) =>
            _addExercise(workout, name, setsCount, reps, weight),
      ),
    );
  }

  void _addExercise(
    WorkoutEntity workout,
    String name,
    int setsCount,
    int reps,
    double weight,
  ) {
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

    final params = AddExerciseParams(workout: workout, exercise: exercise);
    if (mounted) {
      context.read<WorkoutBloc>().add(
        WorkoutEvent.addExerciseToWorkout(params),
      );
    }
  }

  void _addSet(WorkoutEntity workout, ExerciseEntity exercise) {
    final lastSet = exercise.sets.isNotEmpty
        ? exercise.sets.last
        : const SetEntity(reps: 10, weight: 0.0);

    final newSet = SetEntity(
      reps: lastSet.reps,
      weight: lastSet.weight,
      isCompleted: false,
    );

    final updatedExercise = exercise.copyWith(sets: [...exercise.sets, newSet]);

    final params = UpdateExerciseParams(
      workout: workout,
      exercise: updatedExercise,
    );

    if (mounted) {
      context.read<WorkoutBloc>().add(
        WorkoutEvent.updateExerciseInWorkout(params),
      );
    }
  }

  void _removeSet(
    WorkoutEntity workout,
    ExerciseEntity exercise,
    int setIndex,
  ) {
    final updatedSets = List<SetEntity>.from(exercise.sets);
    updatedSets.removeAt(setIndex);

    final updatedExercise = exercise.copyWith(sets: updatedSets);

    final params = UpdateExerciseParams(
      workout: workout,
      exercise: updatedExercise,
    );

    if (mounted) {
      context.read<WorkoutBloc>().add(
        WorkoutEvent.updateExerciseInWorkout(params),
      );
    }
  }

  void _removeExercise(WorkoutEntity workout, ExerciseEntity exercise) {
    final params = RemoveExerciseParams(
      workout: workout,
      exerciseId: exercise.exerciseId,
    );

    if (mounted) {
      context.read<WorkoutBloc>().add(
        WorkoutEvent.removeExerciseFromWorkout(params),
      );
    }
  }

  void _editSet(
    WorkoutEntity workout,
    ExerciseEntity exercise,
    int setIndex,
    SetEntity set,
  ) {
    showDialog(
      context: context,
      builder: (context) => EditSetDialog(
        set: set,
        setIndex: setIndex,
        onSave: (reps, weight) {
          final updatedSet = set.copyWith(reps: reps, weight: weight);
          final updatedSets = List<SetEntity>.from(exercise.sets);
          updatedSets[setIndex] = updatedSet;

          final updatedExercise = exercise.copyWith(sets: updatedSets);

          final params = UpdateExerciseParams(
            workout: workout,
            exercise: updatedExercise,
          );

          if (mounted) {
            context.read<WorkoutBloc>().add(
              WorkoutEvent.updateExerciseInWorkout(params),
            );
          }
        },
      ),
    );
  }

  void _endSession(WorkoutEntity workout) {
    final endTime = DateTime.now();
    final duration = endTime.difference(workout.startTime).inMinutes;

    final params = EndWorkoutSessionParams(workout: workout, endTime: endTime);

    if (mounted) {
      context.read<WorkoutBloc>().add(WorkoutEvent.endWorkoutSession(params));
    }

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
              context.pop();
              context.pop();
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  String _formatTime(DateTime dateTime) {
    final hour = dateTime.hour.toString().padLeft(2, '0');
    final minute = dateTime.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }

  String _formatDuration(int minutes) {
    final hours = minutes ~/ 60;
    final remainingMinutes = minutes % 60;

    if (hours > 0) {
      return '${hours}h ${remainingMinutes}m';
    } else {
      return '${remainingMinutes}m';
    }
  }

  @override
  void dispose() {
    super.dispose();
  }
}
