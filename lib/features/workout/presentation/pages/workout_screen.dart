import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/features/workout/presentation/bloc/workout_bloc.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/workout/workout_state_handler.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        context.read<WorkoutBloc>().add(const WorkoutEvent.loadWorkouts());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/workout/create'),
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 24)),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'your_workouts'.tr(),
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            const WorkoutStateHandler(),
          ],
        ),
      ),
    );
  }
}
