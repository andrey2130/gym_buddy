import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/core/services/navigation_service.dart';
import 'package:gym_buddy/features/auth/presentation/pages/login_screen.dart';
import 'package:gym_buddy/features/auth/presentation/pages/register_screen.dart';
import 'package:gym_buddy/features/onboarding/presentation/pages/onboarding_screen.dart';
import 'package:gym_buddy/features/splash_screen/presentation/splash_screen.dart';
import 'package:gym_buddy/injections.dart';

// ignore: strict_raw_type
CustomTransitionPage buildTransitionPage({
  required LocalKey key,
  required Widget child,
}) {
  return CustomTransitionPage(
    key: key,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final fadeTween = Tween<double>(
        begin: 0.0,
        end: 1.0,
      ).chain(CurveTween(curve: Curves.easeInOut));
      final scaleTween = Tween<double>(
        begin: 0.95,
        end: 1.0,
      ).chain(CurveTween(curve: Curves.easeInOut));

      final reverseFadeTween = Tween<double>(
        begin: 1.0,
        end: 0.0,
      ).chain(CurveTween(curve: Curves.easeInOut));
      final reverseScaleTween = Tween<double>(
        begin: 1.0,
        end: 0.95,
      ).chain(CurveTween(curve: Curves.easeInOut));

      return FadeTransition(
        opacity: animation.isCompleted
            ? reverseFadeTween.animate(secondaryAnimation)
            : fadeTween.animate(animation),
        child: ScaleTransition(
          scale: animation.isCompleted
              ? reverseScaleTween.animate(secondaryAnimation)
              : scaleTween.animate(animation),
          child: child,
        ),
      );
    },
    transitionDuration: const Duration(milliseconds: 300),
    reverseTransitionDuration: const Duration(milliseconds: 300),
  );
}

final route = GoRouter(
  initialLocation: '/',
  redirect: (context, state) async {
    // Don't redirect these paths
    if (['/login', '/register'].contains(state.matchedLocation)) {
      return null;
    }

    final navigationService = getIt<NavigationService>();
    final result = await navigationService.getNavigationState();

    return result.fold((failure) => '/', (navigationState) {
      switch (navigationState) {
        case NavigationState.authenticated:
          return '/home';

        case NavigationState.unauthenticated:
          return '/';
      }
    });
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
      pageBuilder: (context, state) =>
          buildTransitionPage(key: state.pageKey, child: const SplashScreen()),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
      pageBuilder: (context, state) =>
          buildTransitionPage(key: state.pageKey, child: const LoginScreen()),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
      pageBuilder: (context, state) => buildTransitionPage(
        key: state.pageKey,
        child: const RegisterScreen(),
      ),
    ),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const OnboardingScreen(),
      pageBuilder: (context, state) => buildTransitionPage(
        key: state.pageKey,
        child: const OnboardingScreen(),
      ),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) =>
          const Scaffold(body: Center(child: Text('HOME'))),
      pageBuilder: (context, state) => buildTransitionPage(
        key: state.pageKey,
        child: const Scaffold(body: Center(child: Text('HOME'))),
      ),
    ),
  ],
);
