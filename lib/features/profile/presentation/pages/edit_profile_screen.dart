import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/core/utils/adaptive_dialog.dart';
import 'package:gym_buddy/core/utils/custom_app_bar.dart';
import 'package:gym_buddy/core/utils/custom_button.dart';
import 'package:gym_buddy/core/utils/custom_text_field.dart';
import 'package:gym_buddy/core/utils/validators.dart';
import 'package:gym_buddy/features/profile/domain/params/update_user_params.dart';
import 'package:gym_buddy/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:gym_buddy/features/profile/presentation/widgets/expansion_tile.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController currentPasswordController =
      TextEditingController();

  String initialName = '';
  String initialEmail = '';
  bool isPasswordVisible = false;
  bool isCurrentPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    final state = context.read<ProfileBloc>().state;
    state.maybeWhen(
      loaded: (user) {
        initialName = user.name;
        initialEmail = user.email;
        nameController.text = user.name;
        emailController.text = user.email;
      },
      orElse: () {},
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> _onSave() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final bloc = context.read<ProfileBloc>();
    final uid = bloc.state.maybeWhen(
      loaded: (user) => user.uid,
      orElse: () => '',
    );

    final hasNameChanged = nameController.text.trim() != initialName;
    final hasEmailChanged = emailController.text.trim() != initialEmail;
    final hasPassword = passwordController.text.trim().isNotEmpty;

    if (!hasNameChanged && !hasEmailChanged && !hasPassword) {
      return;
    }

    String? currentPassword;

    if (hasEmailChanged || hasPassword) {
      currentPassword = await showAdaptivePasswordDialog(
        context: context,
        title: 'current_password'.tr(),
        hint: 'current_password'.tr(),
        confirmText: 'confirm'.tr(),
        cancelText: 'cancel'.tr(),
      );

      if (currentPassword == null || currentPassword.isEmpty) {
        return;
      }
    }

    bloc.add(
      ProfileEvent.updateUserProfile(
        UpdateProfileParams(
          uid: uid,
          name: hasNameChanged ? nameController.text.trim() : null,
          email: hasEmailChanged ? emailController.text.trim() : null,
          password: hasPassword ? passwordController.text.trim() : null,
          currentPassword: currentPassword,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<ProfileBloc, ProfileState>(
          listener: (context, state) {
            state.maybeWhen(
              failure: (message) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(message), backgroundColor: Colors.red),
                );
              },
              sessionExpired: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('email_changed_login_again'.tr()),
                    backgroundColor: Colors.green,
                    duration: const Duration(seconds: 3),
                  ),
                );
                context.go('/login');
              },
              loaded: (user) {
                if (user.pendingEmail != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('verification_email_sent'.tr()),
                      backgroundColor: Colors.orange,
                      duration: const Duration(seconds: 5),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('profile_updated_successfully'.tr()),
                      backgroundColor: Colors.green,
                    ),
                  );
                }
                context.pop();
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            if (state is Loading) {
              return const Center(child: CircularProgressIndicator.adaptive());
            }
            return SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Center(
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
                      _builTextFieldSection(),
                      _buildButtonSection(),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _builTextFieldSection() {
    return Column(
      children: [
        Text(
          'edit_profile'.tr(),
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        CustomExpansionTile(
          icon: Icons.person,
          iosIcon: CupertinoIcons.person,
          title: 'edit_name'.tr(),
          children: [
            CustomTextField(
              controller: nameController,
              labelText: 'name'.tr(),
                validator:Validators.validateName,
            ),
          ],
        ),
        CustomExpansionTile(
          icon: Icons.email,
          iosIcon: CupertinoIcons.mail,
          title: 'edit_email'.tr(),
          children: [
            CustomTextField(
              controller: emailController,
              labelText: 'email'.tr(),
              validator: Validators.validateEmail,
            ),
          ],
        ),
        CustomExpansionTile(
          icon: Icons.password,
          iosIcon: CupertinoIcons.lock,
          title: 'edit_password'.tr(),
          children: [
            CustomTextField(
              controller: passwordController,
              labelText: 'password'.tr(),
              isPassword: true,
              isPasswordVisible: isPasswordVisible,
              onTogglePasswordVisibility: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
              validator: Validators.validatePassword,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildButtonSection() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          child: CustomButton(
            onPressed: _onSave,
            text: 'save'.tr(),
            height: 48.h,
            width: double.infinity,
          ),
        ),
      ],
    );
  }
}
