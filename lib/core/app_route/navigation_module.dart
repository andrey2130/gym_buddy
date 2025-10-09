import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../../injections.dart';
import 'app_route.dart';

@module
abstract class NavigationModule {
  @singleton
  GoRouter get router {
    final user = getIt<FirebaseAuth>().currentUser;
    final initialLocation = user != null ? '/home' : '/';

    return GoRouter(
      initialLocation: initialLocation,
      redirect: (context, state) {
        final currentUser = getIt<FirebaseAuth>().currentUser;
        final isAuthenticated = currentUser != null;
        final path = state.matchedLocation;

        if (!isAuthenticated &&
            path != '/' &&
            path != '/login' &&
            path != '/register') {
          return '/';
        }

        return null;
      },
      routes: appRoutes,
    );
  }
}
