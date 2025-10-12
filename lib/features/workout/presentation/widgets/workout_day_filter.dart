import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/core/theme/app_themes.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/presentation/widgets/workout_card.dart';

class WorkoutDayFilter extends StatefulWidget {
  final Map<String, List<WorkoutEntity>> groupedWorkouts;

  const WorkoutDayFilter({required this.groupedWorkouts, super.key});

  @override
  State<WorkoutDayFilter> createState() => _WorkoutDayFilterState();
}

class _WorkoutDayFilterState extends State<WorkoutDayFilter>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  final Map<String, bool> _expandedStates = {};

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.groupedWorkouts.isEmpty) {
      return _buildEmptyState();
    }

    return FadeTransition(
      opacity: _fadeAnimation,
      child: Column(
        children: widget.groupedWorkouts.entries.map((entry) {
          final dayName = entry.key;
          final workouts = entry.value;
          final isExpanded = _expandedStates[dayName] ?? false;

          return _buildDaySection(context, dayName, workouts, isExpanded);
        }).toList(),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Container(
      margin: const EdgeInsets.all(24),
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.fitness_center_outlined,
              size: 48,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'No Workouts Yet',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Start your fitness journey by creating your first workout!',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDaySection(
    BuildContext context,
    String dayName,
    List<WorkoutEntity> workouts,
    bool isExpanded,
  ) {
    final completedWorkouts = workouts.where((w) => w.isCompleted).length;
    final totalDuration = workouts
        .where((w) => w.isCompleted && w.duration != null)
        .fold<int>(0, (sum, w) => sum + (w.duration ?? 0));
    final progressPercentage = workouts.isEmpty
        ? 0.0
        : completedWorkouts / workouts.length;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            _buildDayHeader(
              context,
              dayName,
              workouts,
              completedWorkouts,
              totalDuration,
              progressPercentage,
              isExpanded,
            ),
            AnimatedCrossFade(
              duration: const Duration(milliseconds: 300),
              crossFadeState: isExpanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              firstChild: const SizedBox.shrink(),
              secondChild: _buildWorkoutsList(context, workouts),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDayHeader(
    BuildContext context,
    String dayName,
    List<WorkoutEntity> workouts,
    int completedWorkouts,
    int totalDuration,
    double progressPercentage,
    bool isExpanded,
  ) {
    return InkWell(
      onTap: () {
        setState(() {
          _expandedStates[dayName] = !isExpanded;
        });
      },
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            _buildDayIcon(dayName),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          dayName,
                          style: Theme.of(context).textTheme.displayMedium
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _buildStatChip(
                          context,
                          '${workouts.length} workout${workouts.length == 1 ? '' : 's'}',
                          Icons.fitness_center,
                        ),
                        const SizedBox(width: 8),
                        if (completedWorkouts > 0)
                          _buildStatChip(
                            context,
                            '${completedWorkouts} completed',
                            Icons.check_circle,
                            color: Colors.green,
                          ),
                        const SizedBox(width: 8),
                        if (totalDuration > 0)
                          _buildStatChip(
                            context,
                            _formatDuration(totalDuration),
                            Icons.timer,
                            color: AppThemes.secondary,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            AnimatedRotation(
              duration: const Duration(milliseconds: 300),
              turns: isExpanded ? 0.5 : 0.0,
              child: Icon(
                Icons.keyboard_arrow_down,
                color: Theme.of(context).colorScheme.primary,
                size: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDayIcon(String dayName) {
    final color = _getDayColor(dayName);
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color, color.withOpacity(0.7)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Icon(_getDayIcon(dayName), color: Colors.white, size: 24),
    );
  }

  Widget _buildStatChip(
    BuildContext context,
    String text,
    IconData icon, {
    Color? color,
  }) {
    final chipColor = color ?? Theme.of(context).colorScheme.primary;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: chipColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: chipColor.withOpacity(0.3), width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: chipColor),
          const SizedBox(width: 4),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: chipColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWorkoutsList(
    BuildContext context,
    List<WorkoutEntity> workouts,
  ) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Column(
        children: workouts.asMap().entries.map((entry) {
          final index = entry.key;
          final workout = entry.value;

          return TweenAnimationBuilder<double>(
            duration: Duration(milliseconds: 300 + (index * 100)),
            tween: Tween(begin: 0.0, end: 1.0),
            builder: (context, value, child) {
              return Transform.translate(
                offset: Offset(0, 20 * (1 - value)),
                child: Opacity(
                  opacity: value,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: WorkoutCard(
                      workout: workout,
                      onTap: () {
                        context.push(
                          '/workout/session/${workout.workoutId}',
                          extra: workout,
                        );
                      },
                    ),
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }

  IconData _getDayIcon(String dayName) {
    switch (dayName) {
      case 'Monday':
        return Icons.fitness_center;
      case 'Tuesday':
        return Icons.directions_run;
      case 'Wednesday':
        return Icons.sports_gymnastics;
      case 'Thursday':
        return Icons.sports_martial_arts;
      case 'Friday':
        return Icons.sports_tennis;
      case 'Saturday':
        return Icons.sports_volleyball;
      case 'Sunday':
        return Icons.sports_basketball;
      default:
        return Icons.calendar_today;
    }
  }

  Color _getDayColor(String dayName) {
    switch (dayName) {
      case 'Monday':
        return const Color(0xFFE53E3E);
      case 'Tuesday':
        return const Color(0xFFDD6B20);
      case 'Wednesday':
        return const Color(0xFFD69E2E);
      case 'Thursday':
        return const Color(0xFF38A169);
      case 'Friday':
        return const Color(0xFF3182CE);
      case 'Saturday':
        return const Color(0xFF553C9A);
      case 'Sunday':
        return const Color(0xFF805AD5);
      default:
        return AppThemes.primary;
    }
  }

  String _formatDuration(int minutes) {
    final hours = minutes ~/ 60;
    final mins = minutes % 60;
    if (hours > 0) {
      return '${hours}h ${mins}m';
    }
    return '${mins}m';
  }
}
