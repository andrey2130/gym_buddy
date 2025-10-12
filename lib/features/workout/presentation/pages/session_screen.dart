import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/core/theme/app_themes.dart';
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
import 'package:uuid/uuid.dart';

class SessionScreen extends StatefulWidget {
  final String workoutId;
  final WorkoutEntity? workout;

  const SessionScreen({required this.workoutId, super.key, this.workout});

  @override
  State<SessionScreen> createState() => _SessionScreenState();
}

class _SessionScreenState extends State<SessionScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;
  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    _slideAnimation =
        Tween<Offset>(begin: const Offset(0, 0.3), end: Offset.zero).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeOutCubic,
          ),
        );

    _animationController.forward();

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
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: SlideTransition(
            position: _slideAnimation,
            child: BlocBuilder<WorkoutBloc, WorkoutState>(
              builder: (context, state) {
                if (state is Loading || state is Initial) {
                  return _buildLoadingState();
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
                    return _buildLoadingState();
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
                  return _buildErrorState(state.message);
                }

                return _buildLoadingState();
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCustomAppBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () => context.pop(),
            icon: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                Platform.isAndroid ? Icons.arrow_back : CupertinoIcons.back,
                color: Theme.of(context).colorScheme.primary,
                size: 20,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Workout Session',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                Text(
                  'Track your progress',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
          BlocBuilder<WorkoutBloc, WorkoutState>(
            builder: (context, state) {
              if (state is Loaded) {
                try {
                  final workout = state.workouts.firstWhere(
                    (w) => w.workoutId == widget.workoutId,
                  );
                  return !workout.isCompleted
                      ? _buildEndSessionButton(workout)
                      : _buildCompletedBadge();
                } catch (e) {
                  return const SizedBox.shrink();
                }
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildEndSessionButton(WorkoutEntity workout) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppThemes.secondary, AppThemes.secondary.withOpacity(0.8)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppThemes.secondary.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () => _endSession(workout),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.stop_circle, color: Colors.white, size: 18),
                const SizedBox(width: 6),
                Text(
                  'End Session',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCompletedBadge() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.green.withOpacity(0.3), width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.check_circle, color: Colors.green, size: 16),
          const SizedBox(width: 4),
          Text(
            'Completed',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator.adaptive(
            valueColor: AlwaysStoppedAnimation<Color>(
              Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Loading workout session...',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.error.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.error_outline,
              size: 48,
              color: Theme.of(context).colorScheme.error,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Error',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
              color: Theme.of(context).colorScheme.error,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            message,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSessionContent(WorkoutEntity workout) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: _buildCustomAppBar(context)),
        SliverToBoxAdapter(child: _buildSessionHeader(workout)),
        if (!workout.isCompleted)
          SliverToBoxAdapter(child: _buildSessionStats(workout)),
        if (workout.exercises.isEmpty)
          SliverToBoxAdapter(child: _buildEmptyState())
        else
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Exercises',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
          ),
        if (workout.exercises.isNotEmpty)
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              final exercise = workout.exercises[index];
              return TweenAnimationBuilder<double>(
                duration: Duration(milliseconds: 300 + (index * 100)),
                tween: Tween(begin: 0.0, end: 1.0),
                builder: (context, value, child) {
                  return Transform.translate(
                    offset: Offset(0, 20 * (1 - value)),
                    child: Opacity(
                      opacity: value,
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 6,
                        ),
                        child: ExerciseCard(
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
                              ? (exercise, setIndex) =>
                                    _removeSet(workout, exercise, setIndex)
                              : null,
                        ),
                      ),
                    ),
                  );
                },
              );
            }, childCount: workout.exercises.length),
          ),
        if (!workout.isCompleted)
          SliverToBoxAdapter(child: _buildAddExerciseButton(workout)),
        const SliverToBoxAdapter(child: SizedBox(height: 32)),
      ],
    );
  }

  Widget _buildSessionHeader(WorkoutEntity workout) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.primary.withOpacity(0.1),
            Theme.of(context).colorScheme.primary.withOpacity(0.05),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.primary.withOpacity(0.7),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(
                        context,
                      ).colorScheme.primary.withOpacity(0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.fitness_center,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      workout.name,
                      style: Theme.of(context).textTheme.displayMedium
                          ?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                    ),
                    const SizedBox(height: 4),
                    _buildStatusChip(workout),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _buildInfoCard(
                  context,
                  Icons.access_time,
                  'Started',
                  _formatTime(workout.startTime),
                ),
              ),
              const SizedBox(width: 12),
              if (workout.isCompleted && workout.duration != null)
                Expanded(
                  child: _buildInfoCard(
                    context,
                    Icons.timer,
                    'Duration',
                    _formatDuration(workout.duration!),
                    color: Colors.green,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatusChip(WorkoutEntity workout) {
    final isCompleted = workout.isCompleted;
    final color = isCompleted ? Colors.green : AppThemes.secondary;
    final text = isCompleted ? 'Completed' : 'In Progress';
    final icon = isCompleted ? Icons.check_circle : Icons.play_circle;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3), width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: color),
          const SizedBox(width: 6),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard(
    BuildContext context,
    IconData icon,
    String label,
    String value, {
    Color? color,
  }) {
    final cardColor = color ?? Theme.of(context).colorScheme.primary;
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: cardColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: cardColor.withOpacity(0.2), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 16, color: cardColor),
              const SizedBox(width: 6),
              Text(
                label,
                style: TextStyle(
                  fontSize: 11,
                  color: cardColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: cardColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSessionStats(WorkoutEntity workout) {
    final totalSets = workout.exercises.fold<int>(
      0,
      (sum, exercise) => sum + exercise.sets.length,
    );
    final totalReps = workout.exercises.fold<int>(
      0,
      (sum, exercise) =>
          sum + exercise.sets.fold<int>(0, (setSum, set) => setSum + set.reps),
    );
    final completedSets = workout.exercises.fold<int>(
      0,
      (sum, exercise) =>
          sum + exercise.sets.where((set) => set.isCompleted).length,
    );

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Session Progress',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _buildStatItem(
                  context,
                  '${workout.exercises.length}',
                  'Exercises',
                  Icons.fitness_center,
                ),
              ),
              Expanded(
                child: _buildStatItem(
                  context,
                  '$completedSets/$totalSets',
                  'Sets',
                  Icons.repeat,
                ),
              ),
              Expanded(
                child: _buildStatItem(
                  context,
                  '$totalReps',
                  'Reps',
                  Icons.trending_up,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(
    BuildContext context,
    String value,
    String label,
    IconData icon,
  ) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            size: 20,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
          ),
        ),
      ],
    );
  }

  Widget _buildEmptyState() {
    return Container(
      margin: const EdgeInsets.all(32),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.fitness_center_outlined,
              size: 40,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'No Exercises Yet',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            'Add your first exercise to start tracking your workout progress!',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddExerciseButton(WorkoutEntity workout) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.primary.withOpacity(0.8),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.3),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () => _showAddExerciseDialog(workout),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.add, color: Colors.white, size: 24),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'Add Exercise',
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 24,
              ),
            ),
            const SizedBox(width: 12),
            const Text('Session Completed!'),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Great job! Your workout lasted ${_formatDuration(duration)}.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.fitness_center,
                    color: Theme.of(context).colorScheme.primary,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Keep up the great work!',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
              context.pop();
            },
            style: TextButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text('Awesome!'),
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
    _animationController.dispose();
    super.dispose();
  }
}
