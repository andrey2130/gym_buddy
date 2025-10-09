import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/core/widgets/custom_button.dart';
import 'package:gym_buddy/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:gym_buddy/features/onboarding/presentation/pages/day_screen.dart';
import 'package:gym_buddy/features/onboarding/presentation/pages/plan_screen.dart';
import 'package:gym_buddy/features/onboarding/presentation/pages/time_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with TickerProviderStateMixin {
  final PageController _pageController = PageController();
  final GlobalKey<TimeScreenState> _timeKey = GlobalKey<TimeScreenState>();
  late AnimationController _introController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _introController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _introController, curve: Curves.easeIn));
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.06),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _introController, curve: Curves.easeOut));
    _introController.forward();

    _pageController.addListener(() {
      final page = _pageController.page?.round() ?? 0;
      if (page != _currentPage) {
        setState(() {
          _currentPage = page;
        });
      }
    });
  }

  @override
  void dispose() {
    _introController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  void _next() {
    final currentPage = _currentPage;
    final state = context.read<OnboardingBloc>().state;

    if (currentPage == 0) {
      final selectedDays = state.maybeWhen(
        daysSelected: (days) => days,
        planSelected: (days, _) => days,
        orElse: () => <String>{},
      );

      if (selectedDays.isEmpty) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('select_training_days'.tr())));
        return;
      }
    }

    if (currentPage == 1) {
      final selectedPlan = state.maybeWhen(
        planSelected: (_, plan) => plan,
        orElse: () => '',
      );

      if (selectedPlan.isEmpty) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('select_training_plan'.tr())));
        return;
      }
    }

    final nextPage = currentPage + 1;
    if (nextPage < 3) {
      _pageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeOutCubic,
      );
    } else {
      final ok = _timeKey.currentState?.validateAndFinish() ?? false;
      if (ok) {
        context.replace('/home');
      }
    }
  }

  void _skip() {
    context.replace('/home');
  }

  @override
  Widget build(BuildContext context) {
    final isLastPage = _currentPage == 2; 
    return BlocListener<OnboardingBloc, OnboardingState>(
      listener: (context, state) {
        state.maybeWhen(
          success: () => context.replace('/home'),
          failure: (message) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(message)));
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: Theme.of(context).brightness == Brightness.dark
              ? SystemUiOverlayStyle.light
              : SystemUiOverlayStyle.dark,
          child: Stack(
            children: [
              _buildBackground(context),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.w,
                  right: 16.w,
                  top: MediaQuery.of(context).padding.top + 16.h,
                  bottom: MediaQuery.of(context).padding.bottom + 16.h,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: PageView(
                        controller: _pageController,
                        children: [
                          DayScreen(onNext: _next),
                          PlanScreen(onNext: _next),
                          TimeScreen(key: _timeKey, onFinish: _skip),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Row(
                      children: [
                        Expanded(
                          child: SmoothPageIndicator(
                            count: 3,
                            controller: _pageController,
                            effect: ExpandingDotsEffect(
                              dotHeight: 6.h,
                              dotWidth: 6.h,
                              expansionFactor: 3,
                              spacing: 6.w,
                              activeDotColor: Theme.of(
                                context,
                              ).colorScheme.primary,
                              dotColor: Theme.of(
                                context,
                              ).colorScheme.outlineVariant,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 140.w,
                          height: 50.h,
                          child: CustomButton(
                            text: isLastPage ? 'finish'.tr() : 'next'.tr(),
                            onPressed: _next,
                            showAnimation: true,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackground(BuildContext context) {
    final theme = Theme.of(context);
    final isLight = theme.brightness == Brightness.light;

    return Stack(
      children: [
        Positioned.fill(
          child: AnimatedBuilder(
            animation: _introController,
            builder: (context, child) {
              return Opacity(
                opacity: _fadeAnimation.value,
                child: Transform.translate(
                  offset: _slideAnimation.value * 20.h,
                  child: child,
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    theme.colorScheme.primary.withValues(
                      alpha: isLight ? 0.14 : 0.08,
                    ),
                    theme.colorScheme.secondary.withValues(
                      alpha: isLight ? 0.12 : 0.06,
                    ),
                    theme.colorScheme.surface.withValues(
                      alpha: isLight ? 0.10 : 0.04,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: -80.h,
          right: -40.w,
          child: _decorativeBlob(
            160.w,
            theme.colorScheme.primary.withValues(alpha: isLight ? 0.22 : 0.15),
          ),
        ),
        Positioned(
          bottom: -60.h,
          left: -60.w,
          child: _decorativeBlob(
            200.w,
            theme.colorScheme.secondary.withValues(
              alpha: isLight ? 0.18 : 0.12,
            ),
          ),
        ),
      ],
    );
  }

  Widget _decorativeBlob(double size, Color color) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        boxShadow: [BoxShadow(color: color, blurRadius: 40, spreadRadius: 20)],
      ),
    );
  }
}
