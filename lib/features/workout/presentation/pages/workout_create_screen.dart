import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/core/widgets/custom_app_bar.dart';
import 'package:gym_buddy/features/auth/domain/usecases/get_current_user_usecase.dart';
import 'package:gym_buddy/features/workout/presentation/bloc/workout_bloc.dart';
import 'package:gym_buddy/features/workout/presentation/services/workout_create_service.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/create/workout_create_button.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/create/workout_form.dart';

class WorkoutCreateScreen extends StatefulWidget {
  final GetCurrentUserIdUsecase getCurrentUserIdUsecase;
  const WorkoutCreateScreen({required this.getCurrentUserIdUsecase, super.key});

  @override
  State<WorkoutCreateScreen> createState() => _WorkoutCreateScreenState();
}

class _WorkoutCreateScreenState extends State<WorkoutCreateScreen> {
  final _nameController = TextEditingController();

  DateTime? _selectedDate;
  TimeOfDay? _startTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            context.read<WorkoutBloc>().add(const WorkoutEvent.loadWorkouts());
          },
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
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
                  'create_your_workout'.tr(),
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                WorkoutForm(
                  nameController: _nameController,
                  selectedDate: _selectedDate,
                  startTime: _startTime,
                  onDateSelected: (date) =>
                      setState(() => _selectedDate = date),
                  onTimeSelected: (time) => setState(() => _startTime = time),
                  onFormChanged: _validateFormIfReady,
                ),
                const Spacer(),
                BlocConsumer<WorkoutBloc, WorkoutState>(
                  listener: (context, state) {
                    state.whenOrNull(
                      created: (workout) {
                        WorkoutCreateService.showSuccessDialog(context);
                      },
                      failure: (message) {
                        ScaffoldMessenger.of(
                          context,
                        ).showSnackBar(SnackBar(content: Text(message)));
                      },
                    );
                  },
                  builder: (context, state) {
                    return WorkoutCreateButton(onCreateWorkout: _createWorkout);
                  },
                ),
              ],
            ),
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

  void _validateFormIfReady() {
    if (_nameController.text.trim().isNotEmpty &&
        _selectedDate != null &&
        _startTime != null) {
      WorkoutCreateService.validateForm(
        context,
        _nameController.text,
        _selectedDate,
        _startTime,
      );
    }
  }

  Future<void> _createWorkout() async {
    await WorkoutCreateService.createWorkout(
      context,
      widget.getCurrentUserIdUsecase,
      _nameController.text,
      _selectedDate,
      _startTime,
    );
  }
}
