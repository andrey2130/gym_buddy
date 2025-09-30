import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DaysSelector extends StatefulWidget {
  final List<String> days;
  final Function(Set<int>) onDaysSelected;
  final Set<int>? initialSelection;

  const DaysSelector({
    required this.days,
    required this.onDaysSelected,
    super.key,
    this.initialSelection,
  });

  @override
  State<DaysSelector> createState() => _DaysSelectorState();
}

class _DaysSelectorState extends State<DaysSelector>
    with TickerProviderStateMixin {
  late final Set<int> _selected;

  @override
  void initState() {
    super.initState();
    _selected = widget.initialSelection?.toSet() ?? {};
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GridView.builder(
      padding: EdgeInsets.only(bottom: 12.h),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 12.h,
        childAspectRatio: 1.1,
      ),
      itemCount: widget.days.length,
      itemBuilder: (context, index) {
        final isSelected = _selected.contains(index);
        final color = isSelected
            ? theme.colorScheme.primary
            : theme.colorScheme.surfaceVariant;
        final textColor = isSelected
            ? theme.colorScheme.onPrimary
            : theme.colorScheme.onSurface;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(16.r),
            onTap: () {
              setState(() {
                if (isSelected) {
                  _selected.remove(index);
                } else {
                  _selected.add(index);
                }
                widget.onDaysSelected(_selected);
              });
            },
            child: Center(
              child: Text(
                widget.days[index],
                style: theme.textTheme.titleMedium?.copyWith(color: textColor),
              ),
            ),
          ),
        );
      },
    );
  }
}
