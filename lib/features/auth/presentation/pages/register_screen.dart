import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import 'package:gym_buddy/core/utils/custom_app_bar.dart';
import 'package:gym_buddy/core/utils/custom_button.dart';
import 'package:gym_buddy/core/utils/custom_text_field.dart';
import 'package:gym_buddy/core/utils/validators.dart';
import 'package:gym_buddy/features/auth/domain/params/register_params.dart';
import 'package:gym_buddy/features/auth/presentation/bloc/auth_bloc.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  void _register() {
    if (_formKey.currentState!.validate()) {
      context.read<AuthBloc>().add(
        AuthEvent.registerViaEmail(
          RegisterParams(
            email: _emailController.text,
            username: _nameController.text,
            password: _passwordController.text,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) async {
        state.maybeWhen(
          failure: (message) async {
            await Future.delayed(const Duration(seconds: 4));

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message), backgroundColor: Colors.red),
            );
          },
          authenticated: (userId) async {
            await Future.delayed(const Duration(seconds: 4));
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        final isLoading = state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );

        return Stack(
          children: [
            Scaffold(
              body: SafeArea(
                child: Form(
                  key: _formKey,
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
                                _buildTextFieldSections(
                                  context,
                                  _nameController,
                                  _emailController,
                                  _passwordController,
                                  _confirmPasswordController,
                                ),
                                SizedBox(height: 24.0.h),
                                _buildButtonSection(context),
                                SizedBox(height: 24.h),
                                _buildLoginLink(context),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Lottie overlay for laoding state
            if (isLoading)
              ColoredBox(
                color: Colors.black.withValues(alpha: 0.5),
                child: Center(
                  child: SizedBox(
                    height: 150.h,
                    width: 150.w,
                    child: Lottie.asset(
                      'assets/lottie/successful_registration.json',
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  Widget _buildHeadSection(BuildContext context) {
    return Column(
      children: [
        Text(
          "we_are_glad_to_see_you_here".tr(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        SizedBox(height: 8.0.h),
        Text(
          "create_an_account_to_get_started".tr(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }

  Widget _buildTextFieldSections(
    BuildContext context,
    TextEditingController nameController,
    TextEditingController emailController,
    TextEditingController passwordController,
    TextEditingController confirmPasswordController,
  ) {
    return Column(
      children: [
        CustomTextField(
          controller: nameController,
          labelText: 'username'.tr(),
          radius: 12.0,
          height: 56.h,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Username is required';
            }
            return null;
          },
        ),
        SizedBox(height: 16.h),
        CustomTextField(
          controller: emailController,
          labelText: 'email'.tr(),
          keyboardType: TextInputType.emailAddress,
          radius: 12.0,
          height: 56.h,
          validator: Validators.validateEmail,
        ),
        SizedBox(height: 16.h),
        CustomTextField(
          controller: passwordController,
          labelText: 'password'.tr(),
          isPassword: true,
          radius: 12.0,
          height: 56.h,
          validator: Validators.validatePassword,
        ),
        SizedBox(height: 16.h),
        CustomTextField(
          controller: confirmPasswordController,
          labelText: 'confirm_password'.tr(),
          isPassword: true,
          radius: 12.0,
          height: 56.h,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Confirm Password is required';
            }
            if (value != passwordController.text) {
              return 'Passwords do not match';
            }
            return null;
          },
        ),
      ],
    );
  }

  Widget _buildButtonSection(BuildContext context) {
    return CustomButton(
      height: 48.h,
      width: double.infinity,
      onPressed: _register,
      text: 'register'.tr(),
    );
  }
}

Widget _buildLoginLink(BuildContext context) {
  return TextButton(
    onPressed: () => context.push('/login'),
    child: Text(
      'already_have_an_account_log_in'.tr(),
      style: Theme.of(context).textTheme.bodyMedium,
    ),
  );
}
