import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/core/utils/custom_app_bar.dart';
import 'package:gym_buddy/core/utils/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              leftWidget: IconButton(
                onPressed: () => context.pop(),
                icon: Platform.isAndroid
                    ? const Icon(Icons.arrow_back)
                    : const Icon(CupertinoIcons.back),
              ),
            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0.w,
                  vertical: 24.h,
                ),
                child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildHeadSection(context),
                      const SizedBox(height: 32.0),
                      _buildTextFieldSections(context),
                      SizedBox(height: 24.0.h),
                      _buildButtonSection(context),
                      SizedBox(height: 24.h),
                      _buildRegisterLink(context),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildHeadSection(BuildContext context) {
  return Column(
    children: [
      Text(
        "welcome_back".tr(),
        textAlign: TextAlign.center,

        style: Theme.of(context).textTheme.displayLarge,
      ),
      SizedBox(height: 8.0.h),
      Text(
        "login_to_continue".tr(),
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    ],
  );
}

Widget _buildTextFieldSections(BuildContext context) {
  return Column(
    children: [
      TextField(
        decoration: InputDecoration(
          labelText: 'email'.tr(),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
        ),
      ),
      SizedBox(height: 16.h),
      TextField(
        decoration: InputDecoration(
          labelText: 'password'.tr(),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
        ),
        obscureText: true,
      ),
    ],
  );
}

Widget _buildButtonSection(BuildContext context) {
  return CustomButton(
    height: 48.h,
    width: double.infinity,
    onPressed: () {},
    text: 'register'.tr(),
  );
}

Widget _buildRegisterLink(BuildContext context) {
  return TextButton(
    onPressed: () => context.push('/register'),
    child: Text(
      "don't_have_an_account_regiser".tr(),
      style: Theme.of(context).textTheme.bodyMedium,
    ),
  );
}
