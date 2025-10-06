import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
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
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        state.maybeWhen(
          failure: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message), backgroundColor: Colors.red),
            );
          },
          orElse: () {},
        );
      },
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.when(
            initial: () =>
                const Center(child: CircularProgressIndicator.adaptive()),
            loading: () =>
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
              body: CustomScrollView(
                slivers: [
                  _buildAppBar(context, user.backgroundUrl),
                  _buildProfileHeader(user.name, user.email, user.avatarUrl),
                  const SliverToBoxAdapter(child: SizedBox(height: 16)),
                  _buildStatsSection(),
                  const SliverToBoxAdapter(child: SizedBox(height: 24)),
                  _buildSectionHeader('account'.tr()),
                  _buildAccountSection(),
                  const SliverToBoxAdapter(child: SizedBox(height: 16)),
                  _buildSectionHeader('training_settings'.tr()),
                  _buildTrainingSettingsSection(),
                  const SliverToBoxAdapter(child: SizedBox(height: 16)),
                  _buildSectionHeader('preferences'.tr()),
                  _buildPreferencesSection(context),
                  const SliverToBoxAdapter(child: SizedBox(height: 16)),
                  _buildSectionHeader('general'.tr()),
                  _buildGeneralSection(),
                  const SliverToBoxAdapter(child: SizedBox(height: 16)),
                  _buildLogoutSection(),
                  const SliverToBoxAdapter(child: SizedBox(height: 32)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildAppBar(BuildContext context, String? backgroundUrl) {
    return SliverAppBar(
      expandedHeight: 150,
      pinned: true,
      floating: false,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            CachedNetworkImage(
              imageUrl: backgroundUrl!,
              fit: BoxFit.cover,
              placeholder: (context, url) =>
                  Image.asset('assets/images/everest.jpg', fit: BoxFit.cover),
              errorWidget: (context, url, error) =>
                  Image.asset('assets/images/everest.jpg', fit: BoxFit.cover),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withValues(alpha: 0.7),
                  ],
                ),
              ),
            ),
          ],
        ),
        title: Text(
          'profile'.tr(),
          style: Theme.of(
            context,
          ).textTheme.displayLarge?.copyWith(color: Colors.white),
        ),
        centerTitle: true,
      ),
    );
  }

  Widget _buildProfileHeader(String name, String email, String? avatarUrl) {
    return SliverToBoxAdapter(
      child: ProfileHeader(
        userName: name,
        userEmail: email,
        avatarUrl: avatarUrl,
        onTap: () => _chooseAvatar(context),
      ),
    );
  }

  Widget _buildStatsSection() {
    return const SliverToBoxAdapter(
      child: ProfileStatsCard(
        totalWorkouts: 42,
        totalReps: 1250,
        currentStreak: 7,
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: SectionHeaderDelegate(title: title, height: 40.0),
    );
  }

  Widget _buildAccountSection() {
    return SliverToBoxAdapter(
      child: SectionContent(
        children: [
          SettingsTile(
            icon: Icons.person_outline,
            iosIcon: CupertinoIcons.person,
            title: 'edit_profile'.tr(),
            onTap: _onEditProfile,
          ),
        ],
      ),
    );
  }

  Widget _buildTrainingSettingsSection() {
    return SliverToBoxAdapter(
      child: SectionContent(
        children: [
          SettingsTile(
            icon: Icons.calendar_today,
            iosIcon: CupertinoIcons.calendar,
            title: 'select_training_days'.tr(),
            onTap: _onTrainingDays,
          ),
          SettingsTile(
            icon: Icons.fitness_center,
            iosIcon: CupertinoIcons.sportscourt,
            title: 'select_training_plan'.tr(),
            onTap: _onTrainingPlan,
          ),
        ],
      ),
    );
  }

  Widget _buildPreferencesSection(BuildContext context) {
    return SliverToBoxAdapter(
      child: SectionContent(
        children: [
          SettingsTile(
            icon: Icons.brightness_6,
            iosIcon: CupertinoIcons.brightness,
            title: 'theme'.tr(),
            onTap: _onTheme,
            trailing: Icon(
              _isDarkMode ? Icons.dark_mode : Icons.light_mode,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          SettingsTile(
            icon: Icons.language,
            iosIcon: CupertinoIcons.globe,
            title: 'language'.tr(),
            subtitle: context.locale.languageCode == 'uk'
                ? 'Українська'
                : 'English',
            onTap: _onLanguage,
          ),
          SettingsTile(
            icon: Icons.notifications_outlined,
            iosIcon: CupertinoIcons.bell,
            title: 'notifications'.tr(),
            onTap: _onNotifications,
          ),
        ],
      ),
    );
  }

  Widget _buildGeneralSection() {
    return SliverToBoxAdapter(
      child: SectionContent(
        children: [
          SettingsTile(
            icon: Icons.info_outline,
            iosIcon: CupertinoIcons.info_circle,
            title: 'about'.tr(),
            onTap: _onAbout,
          ),
          SettingsTile(
            icon: Icons.privacy_tip_outlined,
            iosIcon: CupertinoIcons.lock_shield,
            title: 'privacy_policy'.tr(),
            onTap: _onPrivacyPolicy,
          ),
          SettingsTile(
            icon: Icons.description_outlined,
            iosIcon: CupertinoIcons.doc_text,
            title: 'terms_of_service'.tr(),
            onTap: _onTerms,
          ),
          SettingsTile(
            icon: Icons.verified_outlined,
            iosIcon: CupertinoIcons.checkmark_seal,
            title: 'app_version'.tr(),
            subtitle: '1.0.0',
            onTap: () {},
            showTrailing: false,
          ),
        ],
      ),
    );
  }

  Widget _buildLogoutSection() {
    return SliverToBoxAdapter(
      child: SectionContent(
        children: [
          SettingsTile(
            icon: Icons.logout,
            iosIcon: CupertinoIcons.arrow_right_square,
            title: 'logout'.tr(),
            iconColor: Colors.red,
            onTap: _onLogout,
          ),
        ],
      ),
    );
  }

  void _showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildLanguageTile(
              language: 'English',
              locale: const Locale('en', 'US'),
            ),
            _buildLanguageTile(
              language: 'Українська',
              locale: const Locale('uk', 'UA'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageTile({
    required String language,
    required Locale locale,
  }) {
    return ListTile(
      leading: const Icon(Icons.check),
      title: Text(language),
      onTap: () {
        context.setLocale(locale);
        context.pop(context);
      },
    );
  }

  void _onTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  void _chooseAvatar(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog.adaptive(
        title: Text('choose_avatar'.tr()),
        actions: [
          TextButton(
            onPressed: () {
              _uploadAvatar();
              context.pop(context);
            },
            child: Text('avatar'.tr()),
          ),
          TextButton(
            onPressed: () {
              _uploadBackground();
              context.pop(context);
            },
            child: Text('background'.tr()),
          ),
        ],
      ),
    );
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

  void _onEditProfile() {}

  void _onTrainingDays() {}

  void _onTrainingPlan() {}
  void _onLanguage() {
    _showLanguageBottomSheet();
  }

  void _onNotifications() {}

  void _onAbout() {}

  void _onPrivacyPolicy() {}

  void _onTerms() {}

  void _onLogout() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog.adaptive(
        title: Text('logout'.tr()),
        content: Text('logout_confirmation'.tr()),
        actions: [
          TextButton(
            child: Text('cancel'.tr()),
            onPressed: () => context.pop(context),
          ),

          TextButton(
            child: Text('logout'.tr()),
            onPressed: () => context.pop(context),
          ),
        ],
      ),
    );
  }
}
