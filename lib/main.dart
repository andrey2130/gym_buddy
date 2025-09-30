import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gym_buddy/core/app_route/app_route.dart';
import 'package:gym_buddy/core/theme/app_themes.dart';
import 'package:gym_buddy/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:gym_buddy/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:gym_buddy/firebase_options.dart';
import 'package:gym_buddy/injections.dart';
import 'package:talker_flutter/talker_flutter.dart';

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await EasyLocalization.ensureInitialized();

      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      configureDependencies();
      runApp(
        EasyLocalization(
          supportedLocales: const [Locale('en', 'US'), Locale('uk', 'UA')],
          path: 'assets/translations',
          fallbackLocale: const Locale('en'),
          child: const MyApp(),
        ),
      );
    },
    (error, stackTrace) {
      getIt<Talker>().handle(error);
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.checkAuthStatus()),
        ),
        BlocProvider(create: (context) => getIt<OnboardingBloc>()),
      ],
      child: TalkerWrapper(
        talker: getIt<Talker>(),
        child: ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          child: GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: MaterialApp.router(
              routerConfig: route,
              theme: AppThemes.darkTheme(),
              debugShowCheckedModeBanner: false,
              locale: context.locale,
              supportedLocales: context.supportedLocales,
              localizationsDelegates: context.localizationDelegates,
            ),
          ),
        ),
      ),
    );
  }
}
