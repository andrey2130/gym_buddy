import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/presentation/bloc/workout_bloc.dart';
import 'package:gym_buddy/features/workout/presentation/services/session_service.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/exercise_expansion_card.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/session/add_exercise_button.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/session/session_app_bar.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/session/session_empty_state.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/session/session_error_state.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/session/session_header.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/session/session_loading_state.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/session/session_stats.dart';

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
  
  WorkoutEntity? _currentWorkout;

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

    _currentWorkout = widget.workout;

    if (widget.workout == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          context.read<WorkoutBloc>().add(
            const WorkoutEvent.loadWorkouts(forceLoading: true),
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: SlideTransition(
            position: _slideAnimation,
            child: BlocBuilder<WorkoutBloc, WorkoutState>(
              builder: (context, state) {
                // Зберігаємо поточний workout при оновленнях
                if (state is Updated) {
                  if (state.workout.workoutId == widget.workoutId) {
                    _currentWorkout = state.workout;
                  }
                  return _buildSessionContent(_currentWorkout!);
                }

                if (state is Loaded || state is SilentlyUpdated) {
                  final workouts = state is Loaded 
                      ? state.workouts 
                      : (state as SilentlyUpdated).workouts;
                  
                  try {
                    final workout = workouts.firstWhere(
                      (w) => w.workoutId == widget.workoutId,
                    );
                    _currentWorkout = workout;
                    return _buildSessionContent(workout);
                  } catch (e) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('workout_not_found'.tr())),
                      );
                      context.pop();
                    });
                    return const SessionLoadingState();
                  }
                }

                if (state is Initial || state is Loading) {
                  // Якщо є збережений workout, показуємо його замість loader
                  if (_currentWorkout != null) {
                    return _buildSessionContent(_currentWorkout!);
                  }
                  return const SessionLoadingState();
                }

                if (state is Failure) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(state.message)));
                  });
                  // Якщо є збережений workout, показуємо його
                  if (_currentWorkout != null) {
                    return _buildSessionContent(_currentWorkout!);
                  }
                  return SessionErrorState(message: state.message);
                }

                // Fallback - якщо є збережений workout
                if (_currentWorkout != null) {
                  return _buildSessionContent(_currentWorkout!);
                }

                return const SessionLoadingState();
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSessionContent(WorkoutEntity workout) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SessionAppBar(workoutId: widget.workoutId)),
        SliverToBoxAdapter(child: SessionHeader(workout: workout)),
        if (!workout.isCompleted)
          SliverToBoxAdapter(child: SessionStats(workout: workout)),
        if (workout.exercises.isEmpty)
          const SliverToBoxAdapter(child: SessionEmptyState())
        else
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Text(
                'exercises'.tr(),
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
                      child: ExerciseExpansionCard(
                        exercise: exercise,
                        workout: workout,
                        onRemoveExercise: !workout.isCompleted
                            ? () => SessionService.removeExercise(
                                context,
                                workout,
                                exercise,
                              )
                            : null,
                        onAddSet: !workout.isCompleted
                            ? () => SessionService.addSet(
                                context,
                                workout,
                                exercise,
                              )
                            : null,
                        onEditSet: !workout.isCompleted
                            ? (exercise, setIndex, set) =>
                                  SessionService.editSet(
                                    context,
                                    workout,
                                    exercise,
                                    setIndex,
                                    set,
                                  )
                            : null,
                        onRemoveSet: !workout.isCompleted
                            ? (exercise, setIndex) => SessionService.removeSet(
                                context,
                                workout,
                                exercise,
                                setIndex,
                              )
                            : null,
                        onToggleSetCompletion: !workout.isCompleted
                            ? (exercise, setIndex, set) =>
                                  SessionService.toggleSetCompletion(
                                    context,
                                    workout,
                                    exercise,
                                    setIndex,
                                    set,
                                  )
                            : null,
                      ),
                    ),
                  );
                },
              );
            }, childCount: workout.exercises.length),
          ),
        if (!workout.isCompleted)
          SliverToBoxAdapter(
            child: AddExerciseButton(
              workout: workout,
              onTap: () =>
                  SessionService.showAddExerciseDialog(context, workout),
            ),
          ),
        const SliverToBoxAdapter(child: SizedBox(height: 32)),
      ],
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}