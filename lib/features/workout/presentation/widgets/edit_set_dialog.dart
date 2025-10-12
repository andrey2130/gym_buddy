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
      title: Text('Edit Set ${widget.setIndex + 1}'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _repsController,
            decoration: const InputDecoration(
              labelText: 'Reps',
              hintText: '12',
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _weightController,
            decoration: const InputDecoration(
              labelText: 'Weight (kg)',
              hintText: '60',
            ),
            keyboardType: TextInputType.number,
          ),
        ],
      ),
      actions: [
        TextButton(onPressed: () => context.pop(), child: const Text('Cancel')),
        ElevatedButton(onPressed: _saveSet, child: const Text('Save')),
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
