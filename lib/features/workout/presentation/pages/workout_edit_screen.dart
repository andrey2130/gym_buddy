import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/core/widgets/custom_app_bar.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/presentation/bloc/workout_bloc.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/create/workout_create_button.dart';

class WorkoutEditScreen extends StatefulWidget {
  final WorkoutEntity workout;

  const WorkoutEditScreen({required this.workout, super.key});

  @override
  State<WorkoutEditScreen> createState() => _WorkoutEditScreenState();
}

class _WorkoutEditScreenState extends State<WorkoutEditScreen> {
  late final TextEditingController _nameController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.workout.name);

    // Calculate end time from start time and duration if available
    if (widget.workout.duration != null && widget.workout.duration! > 0) {
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<WorkoutBloc>().add(const WorkoutEvent.loadWorkouts());
        },
        child: SafeArea(
          child: Column(
            children: [
              CustomAppBar(
                leftWidget: IconButton(
                  onPressed: () => context.pop(),
                  icon: Platform.isAndroid
                      ? const Icon(Icons.arrow_back)
                      : const Icon(CupertinoIcons.back),
                ),
              ),
              Text(
                'edit_workout'.tr(),
                style: Theme.of(context).textTheme.displayLarge,
              ),

              const Spacer(),
              BlocConsumer<WorkoutBloc, WorkoutState>(
                listener: (context, state) {
                  state.whenOrNull(
                    updated: (workout) {},
                    failure: (message) {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text(message)));
                    },
                  );
                },
                builder: (context, state) {
                  return WorkoutCreateButton(
                    onCreateWorkout: _editWorkout,
                    buttonText: 'save_changes'.tr(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _editWorkout() async {}
}
