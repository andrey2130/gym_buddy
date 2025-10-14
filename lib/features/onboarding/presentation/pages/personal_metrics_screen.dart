import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_buddy/core/widgets/custom_text_field.dart';
import 'package:gym_buddy/features/onboarding/domain/entities/personal_metrics.dart';
import 'package:gym_buddy/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:gym_buddy/features/onboarding/presentation/widgets/switch_pill.dart';

class PersonalMetricsScreen extends StatefulWidget {
  final VoidCallback? onNext;
  const PersonalMetricsScreen({super.key, this.onNext});

  @override
  State<PersonalMetricsScreen> createState() => PersonalMetricsScreenState();
}

class PersonalMetricsScreenState extends State<PersonalMetricsScreen> {
  String _gender = 'male';
  final TextEditingController _birthYear = TextEditingController();
  final TextEditingController _weight = TextEditingController();
  final TextEditingController _height = TextEditingController();

  DateTime? _birthDate;

  @override
  void dispose() {
    _birthYear.dispose();
    _weight.dispose();
    _height.dispose();
    super.dispose();
  }

  bool validate() {
    final rawBirth = _birthYear.text.trim();
    int? by;
    if (rawBirth.contains('-')) {
      final parts = rawBirth.split('-');
      by = int.tryParse(parts[0]);
    } else {
      by = int.tryParse(rawBirth);
    }
    final w = double.tryParse(_weight.text);
    final h = double.tryParse(_height.text);
    if (by == null || w == null || h == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('enter_valid_metrics'.tr())));
      return false;
    }
    context.read<OnboardingBloc>().add(
      OnboardingEvent.setPersonalMetrics(
        metrics: PersonalMetrics(
          gender: _gender,
          birthYear: by,
          weight: w,
          height: h,
        ),
      ),
    );
    return true;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 16.h),
            Text(
              'personal_metrics_title'.tr(),
              style: theme.textTheme.displayLarge,
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 8.h),
            Text('personal_metrics_sub'.tr(), style: theme.textTheme.bodyLarge),
            SizedBox(height: 24.h),
            Row(
              children: [
                Expanded(
                  child: SwitchPill(
                    title: 'gender_male'.tr(),
                    selected: _gender == 'male',
                    onTap: () => setState(() => _gender = 'male'),
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: SwitchPill(
                    title: 'gender_female'.tr(),
                    selected: _gender == 'female',
                    onTap: () => setState(() => _gender = 'female'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            TextFormField(
              readOnly: true,
              controller: _birthYear,
              decoration: InputDecoration(
                labelText: 'birth_year'.tr(),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                hintText: 'DD-MM-YYYY',
              ),
              onTap: _openBirthDatePicker,
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    controller: _weight,
                    labelText: 'weight'.tr(),
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    controller: _height,
                    labelText: 'height'.tr(),
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _openBirthDatePicker() async {
    final now = DateTime.now();
    final initial = _birthDate ?? DateTime(now.year - 25, 1, 1);
    final first = DateTime(now.year - 100, 1, 1);
    final last = DateTime(now.year, now.month, now.day);

    if (Platform.isIOS) {
      DateTime temp = initial;
      await showCupertinoModalPopup<void>(
        context: context,
        builder: (ctx) {
          return Container(
            height: 300,
            color: CupertinoColors.systemBackground.resolveFrom(ctx),
            child: SafeArea(
              top: false,
              child: Column(
                children: [
                  SizedBox(
                    height: 44,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CupertinoButton(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text('cancel'.tr()),
                          onPressed: () => Navigator.of(ctx).pop(),
                        ),
                        CupertinoButton(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text('done'.tr()),
                          onPressed: () {
                            setState(() {
                              _birthDate = temp;
                              _birthYear.text =
                                  '${temp.day.toString().padLeft(2, '0')}-${temp.month.toString().padLeft(2, '0')}-${temp.year.toString().padLeft(4, '0')}';
                            });
                            Navigator.of(ctx).pop();
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.date,
                      initialDateTime: initial,
                      minimumDate: first,
                      maximumDate: last,
                      onDateTimeChanged: (d) => temp = d,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    } else {
      final picked = await showDatePicker(
        context: context,
        initialDate: initial,
        firstDate: first,
        lastDate: last,
        helpText: 'select_birth_date'.tr(),
        initialEntryMode: DatePickerEntryMode.calendarOnly,
      );
      if (picked != null) {
        setState(() {
          _birthDate = picked;
          _birthYear.text =
              '${picked.day.toString().padLeft(2, '0')}-${picked.month.toString().padLeft(2, '0')}-${picked.year.toString().padLeft(4, '0')}';
        });
      }
    }
  }
}
