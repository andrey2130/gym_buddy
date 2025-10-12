import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/core/widgets/custom_app_bar.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/presentation/bloc/workout_bloc.dart';
import 'package:gym_buddy/injections.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  String _selectedFilter = 'all';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<WorkoutBloc>()..add(WorkoutEvent.loadWorkouts()),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.push('/workout/create'),
          child: const Icon(Icons.add),
        ),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                title: CustomAppBar(
                  leftWidget: IconButton(
                    onPressed: () => context.pop(),
                    icon: Platform.isAndroid
                        ? const Icon(Icons.arrow_back)
                        : const Icon(CupertinoIcons.back),
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 24)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Your Workouts',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 16)),
              BlocBuilder<WorkoutBloc, WorkoutState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const SliverToBoxAdapter(
                      child: Center(child: CircularProgressIndicator()),
                    ),
                    loading: () => const SliverToBoxAdapter(
                      child: Center(child: CircularProgressIndicator()),
                    ),
                    loaded: (workouts) => _buildWorkoutContent(workouts),
                    created: (workout) => const SliverToBoxAdapter(
                      child: Center(child: Text('Workout created!')),
                    ),
                    updated: (workout) => const SliverToBoxAdapter(
                      child: Center(child: Text('Workout updated!')),
                    ),
                    deleted: (params) => const SliverToBoxAdapter(
                      child: Center(child: Text('Workout deleted!')),
                    ),
                    failure: (message) => SliverToBoxAdapter(
                      child: Center(child: Text('Error: $message')),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWorkoutContent(List<WorkoutEntity> workouts) {
    final filteredWorkouts = _filterWorkouts(workouts);
    final stats = _calculateStats(workouts);

    return SliverList(
      delegate: SliverChildListDelegate([
        _buildStatsCard(stats),
        const SizedBox(height: 16),
        _buildFilterChips(),
        const SizedBox(height: 16),
        if (filteredWorkouts.isEmpty)
          _buildEmptyState()
        else
          ...filteredWorkouts.map((workout) => _buildWorkoutCard(workout)),
        const SizedBox(height: 80), // Space for FAB
      ]),
    );
  }

  Widget _buildStatsCard(Map<String, dynamic> stats) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildStatItem('Total Hours', '${stats['totalHours']}h', Icons.timer),
          _buildStatItem(
            'Total Reps',
            '${stats['totalReps']}',
            Icons.fitness_center,
          ),
          _buildStatItem(
            'Workouts',
            '${stats['totalWorkouts']}',
            Icons.sports_gymnastics,
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, String value, IconData icon) {
    return Column(
      children: [
        Icon(icon, color: Theme.of(context).colorScheme.primary),
        const SizedBox(height: 4),
        Text(
          value,
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(label, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }

  Widget _buildFilterChips() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          _buildFilterChip('All', 'all'),
          const SizedBox(width: 8),
          _buildFilterChip('Active', 'active'),
          const SizedBox(width: 8),
          _buildFilterChip('Completed', 'completed'),
        ],
      ),
    );
  }

  Widget _buildFilterChip(String label, String value) {
    final isSelected = _selectedFilter == value;
    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (selected) {
        setState(() {
          _selectedFilter = value;
        });
      },
    );
  }

  Widget _buildWorkoutCard(WorkoutEntity workout) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: workout.isCompleted
                ? Colors.green
                : Theme.of(context).colorScheme.primary,
            child: Icon(
              workout.isCompleted ? Icons.check : Icons.fitness_center,
              color: Colors.white,
            ),
          ),
          title: Text(workout.name),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${workout.date.day}/${workout.date.month}/${workout.date.year}',
              ),
              Text(
                '${workout.startTime.hour.toString().padLeft(2, '0')}:${workout.startTime.minute.toString().padLeft(2, '0')}',
              ),
              if (workout.isCompleted && workout.duration != null)
                Text('Duration: ${_formatDuration(workout.duration!)}'),
            ],
          ),
          trailing: Icon(
            Platform.isAndroid
                ? Icons.chevron_right
                : CupertinoIcons.chevron_right,
          ),
          onTap: () {
            context.push(
              '/workout/session/${workout.workoutId}',
              extra: workout,
            );
          },
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          Icon(
            Icons.fitness_center_outlined,
            size: 64,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          const SizedBox(height: 16),
          Text(
            'No workouts found',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(
            'Create your first workout to get started!',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  List<WorkoutEntity> _filterWorkouts(List<WorkoutEntity> workouts) {
    switch (_selectedFilter) {
      case 'active':
        return workouts.where((w) => !w.isCompleted).toList();
      case 'completed':
        return workouts.where((w) => w.isCompleted).toList();
      default:
        return workouts;
    }
  }

  Map<String, dynamic> _calculateStats(List<WorkoutEntity> workouts) {
    final completedWorkouts = workouts.where((w) => w.isCompleted).toList();

    int totalHours = 0;
    int totalReps = 0;

    for (final workout in completedWorkouts) {
      if (workout.duration != null) {
        totalHours += workout.duration! ~/ 60; // Convert minutes to hours
      }

      for (final exercise in workout.exercises) {
        for (final set in exercise.sets) {
          totalReps += set.reps;
        }
      }
    }

    return {
      'totalHours': totalHours,
      'totalReps': totalReps,
      'totalWorkouts': completedWorkouts.length,
    };
  }

  String _formatDuration(int minutes) {
    final hours = minutes ~/ 60;
    final mins = minutes % 60;
    if (hours > 0) {
      return '${hours}h ${mins}m';
    }
    return '${mins}m';
  }
}
