import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_buddy/features/profile/presentation/widgets/widgets.dart';

class TrainingSettingsSection extends StatelessWidget {
  final VoidCallback onTrainingDays;
  final VoidCallback onTrainingPlan;

  const TrainingSettingsSection({
    required this.onTrainingDays,
    required this.onTrainingPlan,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SectionContent(
      children: [
        SettingsTile(
          icon: Icons.calendar_today,
          iosIcon: CupertinoIcons.calendar,
          title: 'select_training_days'.tr(),
          onTap: onTrainingDays,
        ),
        SettingsTile(
          icon: Icons.fitness_center,
          iosIcon: CupertinoIcons.sportscourt,
          title: 'select_training_plan'.tr(),
          onTap: onTrainingPlan,
        ),
      ],
    );
  }
}
