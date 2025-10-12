import 'package:flutter/material.dart';

class WorkoutFilterChips extends StatelessWidget {
  final String selectedFilter;
  final ValueChanged<String> onFilterChanged;

  const WorkoutFilterChips({
    required this.selectedFilter,
    required this.onFilterChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          _buildFilterChip(context, 'All', 'all'),
          const SizedBox(width: 8),
          _buildFilterChip(context, 'Active', 'active'),
          const SizedBox(width: 8),
          _buildFilterChip(context, 'Completed', 'completed'),
        ],
      ),
    );
  }

  Widget _buildFilterChip(BuildContext context, String label, String value) {
    final isSelected = selectedFilter == value;
    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (selected) => onFilterChanged(value),
    );
  }
}
