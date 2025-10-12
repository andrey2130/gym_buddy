import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_buddy/features/auth/presentation/pages/login_screen.dart';
import 'package:gym_buddy/features/auth/presentation/pages/register_screen.dart';
import 'package:gym_buddy/features/home/presentation/pages/main_screen.dart';
import 'package:gym_buddy/features/onboarding/presentation/pages/onboarding_screen.dart';
import 'package:gym_buddy/features/profile/presentation/pages/edit_profile_screen.dart';
import 'package:gym_buddy/features/profile/presentation/pages/training_sections/change_training_days_screen.dart';
import 'package:gym_buddy/features/profile/presentation/pages/training_sections/change_training_plan_screen.dart';
import 'package:gym_buddy/features/splash_screen/presentation/splash_screen.dart';
import 'package:gym_buddy/features/workout/domain/entity/workout_entity.dart';
import 'package:gym_buddy/features/workout/presentation/pages/session_screen.dart';
import 'package:gym_buddy/features/workout/presentation/pages/workout_create_screen.dart';
import 'package:gym_buddy/features/workout/presentation/pages/workout_screen.dart';

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

final appRoutes = [
  GoRoute(
    path: '/',
    pageBuilder: (context, state) =>
        buildTransitionPage(key: state.pageKey, child: const SplashScreen()),
  ),
  GoRoute(
    path: '/login',
    pageBuilder: (context, state) =>
        buildTransitionPage(key: state.pageKey, child: const LoginScreen()),
  ),
  GoRoute(
    path: '/register',
    pageBuilder: (context, state) =>
        buildTransitionPage(key: state.pageKey, child: const RegisterScreen()),
  ),
  GoRoute(
    path: '/onboarding',
    pageBuilder: (context, state) => buildTransitionPage(
      key: state.pageKey,
      child: const OnboardingScreen(),
    ),
  ),
  GoRoute(
    path: '/home',
    pageBuilder: (context, state) =>
        buildTransitionPage(key: state.pageKey, child: const MainScreen()),
  ),
  GoRoute(
    path: '/edit-profile',
    pageBuilder: (context, state) => buildTransitionPage(
      key: state.pageKey,
      child: const EditProfileScreen(),
    ),
  ),
  GoRoute(
    path: '/change-training-plan',
    pageBuilder: (context, state) => buildTransitionPage(
      key: state.pageKey,
      child: const ChangeTrainingPlanScreen(),
    ),
  ),
  GoRoute(
    path: '/change-training-days',
    pageBuilder: (context, state) => buildTransitionPage(
      key: state.pageKey,
      child: const ChangeTrainingDaysScreen(),
    ),
  ),
  GoRoute(
    path: '/workout',
    pageBuilder: (context, state) =>
        buildTransitionPage(key: state.pageKey, child: const WorkoutScreen()),
  ),
  GoRoute(
    path: '/workout/create',
    pageBuilder: (context, state) => buildTransitionPage(
      key: state.pageKey,
      child: const WorkoutCreateScreen(),
    ),
  ),
  GoRoute(
    path: '/workout/session/:workoutId',
    pageBuilder: (context, state) => buildTransitionPage(
      key: state.pageKey,
      child: SessionScreen(
        workoutId: state.pathParameters['workoutId']!,
        workout: state.extra as WorkoutEntity?,
      ),
    ),
  ),
];
