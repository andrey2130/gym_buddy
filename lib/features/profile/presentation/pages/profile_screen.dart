import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/core/utils/errors_overlay.dart';
import 'package:gym_buddy/core/utils/image_picker.dart';
import 'package:gym_buddy/features/profile/domain/params/update_user_params.dart';
import 'package:gym_buddy/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:gym_buddy/features/profile/presentation/widgets/widgets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isDarkMode = false;

  @override
  void initState() {
    super.initState();
    context.read<ProfileBloc>().add(const ProfileEvent.loadUserProfile());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
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
                content: Text('session_expired_login_again'.tr()),
                backgroundColor: Colors.orange,
              ),
            );
            context.go('/login');
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.when(
          initial: () =>
              const Center(child: CircularProgressIndicator.adaptive()),
          loading: () =>
              const Center(child: CircularProgressIndicator.adaptive()),
          sessionExpired: () =>
              const Center(child: CircularProgressIndicator.adaptive()),
          failure: (message) => Scaffold(
            body: ErrorsOverlay(
              message: message,
              onRetry: () => context.read<ProfileBloc>().add(
                const ProfileEvent.loadUserProfile(),
              ),
            ),
          ),
          loaded: (user) => Scaffold(
            body: RefreshIndicator.adaptive(
              onRefresh: () async {
                context.read<ProfileBloc>().add(
                  const ProfileEvent.loadUserProfile(),
                );
              },
              child: CustomScrollView(
                slivers: [
                  ProfileAppBar(backgroundUrl: user.backgroundUrl),
                  SliverToBoxAdapter(
                    child: ProfileHeader(
                      userName: user.name,
                      userEmail: user.email,
                      avatarUrl: user.avatarUrl,
                      pendingEmail: user.pendingEmail,
                      onTap: _showAvatarPicker,
                    ),
                  ),
                  const SliverToBoxAdapter(child: SizedBox(height: 16)),
                  const SliverToBoxAdapter(
                    child: ProfileStatsCard(
                      totalWorkouts: 42,
                      totalReps: 1250,
                      currentStreak: 7,
                    ),
                  ),
                  const SliverToBoxAdapter(child: SizedBox(height: 24)),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: SectionHeaderDelegate(
                      title: 'account'.tr(),
                      height: 40.0,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: AccountSection(onEditProfile: _onEditProfile),
                  ),
                  const SliverToBoxAdapter(child: SizedBox(height: 16)),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: SectionHeaderDelegate(
                      title: 'training_settings'.tr(),
                      height: 40.0,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: TrainingSettingsSection(
                      onTrainingDays: _onTrainingDays,
                      onTrainingPlan: _onTrainingPlan,
                    ),
                  ),
                  const SliverToBoxAdapter(child: SizedBox(height: 16)),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: SectionHeaderDelegate(
                      title: 'preferences'.tr(),
                      height: 40.0,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: PreferencesSection(
                      isDarkMode: _isDarkMode,
                      onTheme: _onTheme,
                      onLanguage: _onLanguage,
                      onNotifications: _onNotifications,
                    ),
                  ),
                  const SliverToBoxAdapter(child: SizedBox(height: 16)),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: SectionHeaderDelegate(
                      title: 'general'.tr(),
                      height: 40.0,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: GeneralSection(
                      onAbout: _onAbout,
                      onPrivacyPolicy: _onPrivacyPolicy,
                      onTerms: _onTerms,
                    ),
                  ),
                  const SliverToBoxAdapter(child: SizedBox(height: 16)),
                  SliverToBoxAdapter(child: LogoutSection(onLogout: _onLogout)),
                  const SliverToBoxAdapter(child: SizedBox(height: 32)),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _showAvatarPicker() {
    AvatarPickerDialog.show(
      context,
      onAvatarTap: _uploadAvatar,
      onBackgroundTap: _uploadBackground,
    );
  }

  void _onTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  Future<void> _uploadAvatar() async {
    final image = await ImagePickerHelper.pickImageFromGallery();
    if (image != null) {
      if (!mounted) return;
      context.read<ProfileBloc>().add(
        ProfileEvent.updateUserProfile(
          UpdateProfileParams(
            uid: context.read<ProfileBloc>().state.maybeWhen(
              loaded: (user) => user.uid,
              orElse: () => '',
            ),
            avatarUrl: image,
          ),
        ),
      );
    }
  }

  Future<void> _uploadBackground() async {
    final image = await ImagePickerHelper.pickImageFromGallery();
    if (image != null) {
      if (!mounted) return;
      context.read<ProfileBloc>().add(
        ProfileEvent.updateUserProfile(
          UpdateProfileParams(
            uid: context.read<ProfileBloc>().state.maybeWhen(
              loaded: (user) => user.uid,
              orElse: () => '',
            ),
            backgroundUrl: image,
          ),
        ),
      );
    }
  }

  void _onEditProfile() {
    context.push('/edit-profile');
  }

  void _onTrainingDays() {}

  void _onTrainingPlan() {}
  void _onLanguage() {
    LanguageBottomSheet.show(context);
  }

  void _onNotifications() {}

  void _onAbout() {}

  void _onPrivacyPolicy() {}

  void _onTerms() {}

  void _onLogout() {
    LogoutDialog.show(context, onConfirm: () {});
  }
}
