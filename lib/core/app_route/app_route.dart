import 'package:go_router/go_router.dart';
import 'package:gym_buddy/features/auth/presentation/pages/login_screen.dart';
import 'package:gym_buddy/features/auth/presentation/pages/register_screen.dart';
import 'package:gym_buddy/features/splash_screen/presentation/splash_screen.dart';

final route = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
  ],
);
