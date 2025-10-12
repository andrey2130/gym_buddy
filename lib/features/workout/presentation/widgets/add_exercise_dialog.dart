import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddExerciseDialog extends StatefulWidget {
  final Function(String name, int sets, int reps, double weight) onAddExercise;

  const AddExerciseDialog({required this.onAddExercise, super.key});

  @override
  State<AddExerciseDialog> createState() => _AddExerciseDialogState();
}

class _AddExerciseDialogState extends State<AddExerciseDialog> {
  final _exerciseNameController = TextEditingController();
  final _setsController = TextEditingController();
  final _repsController = TextEditingController();
  final _weightController = TextEditingController();

  @override
  void dispose() {
    _exerciseNameController.dispose();
    _setsController.dispose();
    _repsController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('add_exercise'.tr()),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _exerciseNameController,
            decoration: InputDecoration(
              labelText: 'exercise_name'.tr(),
              hintText: 'exercise_name_hint'.tr(),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _setsController,
            decoration: InputDecoration(
              labelText: 'number_of_sets'.tr(),
              hintText: 'sets_hint'.tr(),
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _repsController,
            decoration: InputDecoration(
              labelText: 'reps_per_set'.tr(),
              hintText: 'reps_per_set_hint'.tr(),
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _weightController,
            decoration: InputDecoration(
              labelText: 'weight_kg'.tr(),
              hintText: 'weight_hint_kg'.tr(),
            ),
            keyboardType: TextInputType.number,
          ),
        ],
      ),
      actions: [
        TextButton(onPressed: () => context.pop(), child: Text('cancel'.tr())),
        ElevatedButton(onPressed: _addExercise, child: Text('add'.tr())),
      ],
    );
  }

  void _addExercise() {
    final name = _exerciseNameController.text.trim();
    final setsCount = int.tryParse(_setsController.text) ?? 1;
    final reps = int.tryParse(_repsController.text) ?? 10;
    final weight = double.tryParse(_weightController.text) ?? 0.0;

    if (name.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('please_enter_exercise_name'.tr())),
      );
      return;
    }

    widget.onAddExercise(name, setsCount, reps, weight);
    context.pop();
  }
}
