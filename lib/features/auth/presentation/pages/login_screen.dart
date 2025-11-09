import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/core/theme/app_themes.dart';
import 'package:gym_buddy/core/utils/validators.dart';
import 'package:gym_buddy/core/widgets/custom_app_bar.dart';
import 'package:gym_buddy/features/auth/domain/params/login_params.dart';
import 'package:gym_buddy/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:gym_buddy/features/auth/presentation/widgets/animated_scale_button.dart';
import 'package:gym_buddy/features/auth/presentation/widgets/animated_tex_field.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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

    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  bool _showLottie = false;
  bool _isLoggingIn = false;

  void _login() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _showLottie = true;
        _isLoggingIn = true;
      });

      context.read<AuthBloc>().add(
        AuthEvent.loginViaEmail(
          LoginParams(
            email: _emailController.text,
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
        if (!_isLoggingIn) return;

        if (state is Loading) {
          return;
        }

        await Future.delayed(const Duration(milliseconds: 2500));

        if (!mounted) return;

        setState(() {
          _showLottie = false;
          _isLoggingIn = false;
        });

        await state.maybeWhen(
          failure: (message) => _showDelayedSnackBar(message, isError: true),
          logined: (userId) {
            context.replace('/home');
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        state.maybeWhen(loading: () => true, orElse: () => false);

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

                                    _emailController,
                                    _passwordController,
                                  ),
                                  SizedBox(height: 24.h),
                                  _buildButtonSection(context),
                                  SizedBox(height: 24.h),
                                  _buildRegisterLink(context),
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
            if (_showLottie)
              ColoredBox(
                color: Colors.black.withValues(alpha: 0.5),
                child: Center(
                  child: SizedBox(
                    height: 150.h,
                    width: 150.w,

                    child: Lottie.asset(
                      'assets/lottie/successful_registration.json',
                      repeat: false,
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
          "welcome_back".tr(),
          textAlign: TextAlign.center,

          style: Theme.of(context).textTheme.displayLarge,
        ),
        SizedBox(height: 8.0.h),
      
      ],
    );
  }

  Future<void> _showDelayedSnackBar(
    String message, {
    required bool isError,
  }) async {
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
    TextEditingController emailController,
    TextEditingController passwordController,
  ) {
    return Column(
      children: [
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
      ],
    );
  }

  Widget _buildButtonSection(BuildContext context) {
    return AnimatedScaleButton(
      height: 48.h,
      width: double.infinity,
      onPressed: _login,
      text: 'log_in'.tr(),
    );
  }

  Widget _buildRegisterLink(BuildContext context) {
    return TextButton(
      onPressed: () => context.push('/register'),
      child: Text(
        "don't_have_an_account_regiser".tr(),
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
