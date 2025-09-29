import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/features/auth/presentation/pages/login_screen.dart';
import 'package:gym_buddy/features/auth/presentation/pages/register_screen.dart';
import 'package:gym_buddy/features/splash_screen/presentation/splash_screen.dart';

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
  ],
);
