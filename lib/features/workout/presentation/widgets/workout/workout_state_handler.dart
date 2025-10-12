import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_buddy/features/workout/presentation/bloc/workout_bloc.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/workout/workout_content_builder.dart';

class WorkoutStateHandler extends StatelessWidget {
  const WorkoutStateHandler({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutBloc, WorkoutState>(
      builder: (context, state) {
        if (state is Loading || state is Initial) {
          return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator.adaptive()),
          );
        }

        if (state is Loaded) {
          return WorkoutContentBuilder(
            workouts: state.workouts,
            stats: state.stats,
            filteredWorkouts: state.filteredWorkouts,
            selectedFilter: state.selectedFilter,
            groupedWorkouts: state.groupedWorkouts,
          );
        }

        if (state is Created) {
          _reloadWorkouts(context);
          return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator.adaptive()),
          );
        }

        if (state is Updated) {
          _reloadWorkouts(context);
          return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator.adaptive()),
          );
        }

        if (state is Deleted) {
          _reloadWorkouts(context);
          return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator.adaptive()),
          );
        }

        if (state is Failure) {
          return SliverToBoxAdapter(
            child: Center(child: Text('${'error'.tr()}: ${state.message}')),
          );
        }

        return const SliverToBoxAdapter(
          child: Center(child: CircularProgressIndicator.adaptive()),
        );
      },
    );
  }

  void _reloadWorkouts(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (context.mounted) {
        context.read<WorkoutBloc>().add(const WorkoutEvent.loadWorkouts());
      }
    });
  }
}
