import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/features/workout/domain/entity/set_entity.dart';

class EditSetDialog extends StatefulWidget {
  final SetEntity set;
  final int setIndex;
  final Function(int reps, double weight) onSave;

  const EditSetDialog({
    required this.set,
    required this.setIndex,
    required this.onSave,
    super.key,
  });

  @override
  State<EditSetDialog> createState() => _EditSetDialogState();
}

class _EditSetDialogState extends State<EditSetDialog> {
  late final TextEditingController _repsController;
  late final TextEditingController _weightController;

  @override
  void initState() {
    super.initState();
    _repsController = TextEditingController(text: widget.set.reps.toString());
    _weightController = TextEditingController(
      text: widget.set.weight.toString(),
    );
  }

  @override
  void dispose() {
    _repsController.dispose();
    _weightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('edit_set'.tr(args: ['${widget.setIndex + 1}'])),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _repsController,
            decoration: InputDecoration(
              labelText: 'reps_label'.tr(),
              hintText: 'reps_hint'.tr(),
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _weightController,
            decoration: InputDecoration(
              labelText: 'weight_kg'.tr(),
              hintText: 'weight_hint'.tr(),
            ),
            keyboardType: TextInputType.number,
          ),
        ],
      ),
      actions: [
        TextButton(onPressed: () => context.pop(), child: Text('cancel'.tr())),
        ElevatedButton(onPressed: _saveSet, child: Text('save'.tr())),
      ],
    );
  }

  void _saveSet() {
    final reps = int.tryParse(_repsController.text) ?? widget.set.reps;
    final weight = double.tryParse(_weightController.text) ?? widget.set.weight;

    widget.onSave(reps, weight);
    context.pop();
  }
}
