import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym_buddy/features/workout/presentation/bloc/workout_bloc.dart';

class WorkoutCreateButton extends StatelessWidget {
  final VoidCallback onCreateWorkout;

  const WorkoutCreateButton({required this.onCreateWorkout, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutBloc, WorkoutState>(
      builder: (context, state) {
        final isValid = state.maybeWhen(
          workoutValidated: (isValid) => isValid,
          orElse: () => false,
        );

        final isLoading = state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: isValid && !isLoading ? onCreateWorkout : null,
              child: isLoading
                  ? const CircularProgressIndicator.adaptive()
                  : Text('create_workout'.tr()),
            ),
          ),
        );
      },
    );
  }
}
