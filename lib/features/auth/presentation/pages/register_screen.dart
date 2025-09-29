import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/core/theme/app_themes.dart';
import 'package:gym_buddy/core/utils/custom_app_bar.dart';

import 'package:gym_buddy/core/utils/validators.dart';
import 'package:gym_buddy/features/auth/domain/params/register_params.dart';
import 'package:gym_buddy/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:gym_buddy/features/auth/presentation/widgets/animated_scale_button.dart';
import 'package:gym_buddy/features/auth/presentation/widgets/animated_tex_field.dart';
import 'package:lottie/lottie.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>
    with TickerProviderStateMixin {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );

    _slideAnimation =
        Tween<Offset>(begin: const Offset(0, 0.1), end: Offset.zero).animate(
          CurvedAnimation(parent: _animationController, curve: Curves.easeOut),
        );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

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
      listener: (context, state) {
        state.maybeWhen(
          failure: (message) {
            _showDelayedSnackBar(message, isError: true);
          },
          authenticated: (userId) {
            _showDelayedSnackBar(
              'registration_successful'.tr(),
              isError: false,
            );
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
                            horizontal: 16.w, 
                            vertical: 24.h,
                          ),
                          child: SingleChildScrollView(
                            physics: const ClampingScrollPhysics(),
                            child: AnimatedBuilder(
                              animation: _animationController,
                              builder: (context, child) {
                                return Opacity(
                                  opacity: _fadeAnimation.value,
                                  child: Transform.translate(
                                    offset: _slideAnimation.value,
                                    child: child,
                                  ),
                                );
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _buildHeadSection(context),
                                  SizedBox(height: 32.h),
                                  _buildTextFieldSections(
                                    context,
                                    _nameController,
                                    _emailController,
                                    _passwordController,
                                    _confirmPasswordController,
                                  ),
                                  SizedBox(height: 24.h),
                                  _buildButtonSection(context),
                                  SizedBox(height: 24.h),
                                  _buildLoginLink(context),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
          'we_are_glad_to_see_you_here'.tr(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.displayLarge, // 28–32px, bold
        ),
        SizedBox(height: 8.h),
        Text(
          'create_an_account_to_get_started'.tr(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium, // 14px, secondary
        ),
      ],
    );
  }

  Future<void> _showDelayedSnackBar(
    String message, {
    required bool isError,
  }) async {
    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isError ? AppThemes.error : Colors.green,
        duration: const Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
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
        AnimatedTextField(
          controller: nameController,
          labelText: 'username'.tr(),
          radius: 12.0,
          height: 56.h,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'username_required'.tr();
            }
            return null;
          },
        ),
        SizedBox(height: 16.h),
        AnimatedTextField(
          controller: emailController,
          labelText: 'email'.tr(),
          keyboardType: TextInputType.emailAddress,
          radius: 12.0,
          height: 56.h,
          validator: Validators.validateEmail,
        ),
        SizedBox(height: 16.h),
        AnimatedTextField(
          controller: passwordController,
          labelText: 'password'.tr(),
          isPassword: true,
          radius: 12.0,
          height: 56.h,
          validator: Validators.validatePassword,
        ),
        SizedBox(height: 16.h),
        AnimatedTextField(
          controller: confirmPasswordController,
          labelText: 'confirm_password'.tr(),
          isPassword: true,
          radius: 12.0,
          height: 56.h,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'confirm_password_required'.tr();
            }
            if (value != passwordController.text) {
              return 'passwords_do_not_match'.tr();
            }
            return null;
          },
        ),
      ],
    );
  }

  Widget _buildButtonSection(BuildContext context) {
    return AnimatedScaleButton(
      height: 48.h,
      width: double.infinity,
      onPressed: _register,
      text: 'register'.tr(),
    );
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
}
