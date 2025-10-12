import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddExerciseDialog extends StatefulWidget {
  final Function(String name, int sets, int reps, double weight) onAddExercise;

  const AddExerciseDialog({super.key, required this.onAddExercise});

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
      title: const Text('Add Exercise'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _exerciseNameController,
            decoration: const InputDecoration(
              labelText: 'Exercise Name',
              hintText: 'e.g., Bench Press',
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _setsController,
            decoration: const InputDecoration(
              labelText: 'Number of Sets',
              hintText: '3',
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _repsController,
            decoration: const InputDecoration(
              labelText: 'Reps per Set',
              hintText: '10',
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _weightController,
            decoration: const InputDecoration(
              labelText: 'Weight (kg)',
              hintText: '50',
            ),
            keyboardType: TextInputType.number,
          ),
        ],
      ),
      actions: [
        TextButton(onPressed: () => context.pop(), child: const Text('Cancel')),
        ElevatedButton(onPressed: _addExercise, child: const Text('Add')),
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
        const SnackBar(content: Text('Please enter exercise name')),
      );
      return;
    }

    widget.onAddExercise(name, setsCount, reps, weight);
    context.pop();
  }
}
