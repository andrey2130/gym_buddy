import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/core/widgets/cached_or_asset_image.dart';
import 'package:gym_buddy/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:gym_buddy/features/profile/presentation/widgets/profile_header.dart';
import 'package:gym_buddy/features/profile/presentation/widgets/profile_stats_card.dart';
import 'package:gym_buddy/features/profile/presentation/widgets/section_content.dart';
import 'package:gym_buddy/features/profile/presentation/widgets/section_header_delegate.dart';
import 'package:gym_buddy/features/profile/presentation/widgets/settings_tile.dart';

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
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return state.when(
          initial: () =>
              const Center(child: CircularProgressIndicator.adaptive()),
          loading: () =>
              const Center(child: CircularProgressIndicator.adaptive()),
          failure: (message) => Center(child: Text(message)),
          loaded: (user) => Scaffold(
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 150,
                  pinned: true,
                  floating: false,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Stack(
                      fit: StackFit.expand,
                      children: [
                        CachedOrAssetImage(
                          imageUrl: user.backgroundUrl,
                          assetPath: 'assets/images/everest.jpg',
                          fit: BoxFit.cover,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black.withOpacity(0.7),
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
                ),
                SliverToBoxAdapter(
                  child: ProfileHeader(
                    userName: user.name,
                    userEmail: user.email,
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
                  delegate: SectionHeaderDelegate(title: 'account'.tr()),
                ),
                SliverToBoxAdapter(
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
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 16)),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: SectionHeaderDelegate(
                    title: 'training_settings'.tr(),
                  ),
                ),
                SliverToBoxAdapter(
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
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 16)),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: SectionHeaderDelegate(title: 'preferences'.tr()),
                ),
                SliverToBoxAdapter(
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
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 16)),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: SectionHeaderDelegate(title: 'general'.tr()),
                ),
                SliverToBoxAdapter(
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
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 16)),
                SliverToBoxAdapter(
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
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 32)),
              ],
            ),
          ),
        );
      },
    );
  }

  void _onEditProfile() {}

  void _onTrainingDays() {}

  void _onTrainingPlan() {}

  void _onTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  void _onLanguage() {
    showModalBottomSheet(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.check),
              title: const Text('English'),
              onTap: () {
                context.setLocale(const Locale('en', 'US'));
                context.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.check),
              title: const Text('Українська'),
              onTap: () {
                context.setLocale(const Locale('uk', 'UA'));
                context.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _onNotifications() {}

  void _onAbout() {}

  void _onPrivacyPolicy() {}

  void _onTerms() {}

  void _onLogout() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('logout'.tr()),
        content: Text('logout_confirmation'.tr()),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('cancel'.tr()),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('logout'.tr()),
          ),
        ],
      ),
    );
  }
}
