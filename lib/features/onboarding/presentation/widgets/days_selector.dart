import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DaysSelector extends StatefulWidget {
  final List<String> days;
  final Function(Set<int>) onDaysSelected;
  final Set<int>? initialSelection;
  final int? maxDays;
  final int? minDays;

  const DaysSelector({
    required this.days,
    required this.onDaysSelected,
    super.key,
    this.initialSelection,
    this.maxDays,
    this.minDays,
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
        final isDisabled = !isSelected && 
            widget.maxDays != null && 
            _selected.length >= widget.maxDays!;
        
        final color = isSelected
            ? theme.colorScheme.primary
            : isDisabled
                ? theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.5)
                : theme.colorScheme.surfaceContainerHighest;
        final textColor = isSelected
            ? theme.colorScheme.onPrimary
            : isDisabled
                ? theme.colorScheme.onSurface.withValues(alpha: 0.5)
                : theme.colorScheme.onSurface;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16.r),
            boxShadow: [
              if (isSelected)
                BoxShadow(
                  color: const Color(0xFFFFFFFF).withValues(alpha: 0.3),
                  offset: const Offset(0, 4),
                  blurRadius: 12,
                  spreadRadius: 0,
                ),
            ],
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(16.r),
            onTap: () {
              setState(() {
                if (isSelected) {
                  _selected.remove(index);
                } else {
                  if (widget.maxDays != null && _selected.length >= widget.maxDays!) {
                    return;
                  }
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
