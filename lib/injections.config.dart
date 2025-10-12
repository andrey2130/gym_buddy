// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:firebase_storage/firebase_storage.dart' as _i457;
import 'package:get_it/get_it.dart' as _i174;
import 'package:go_router/go_router.dart' as _i583;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:talker_flutter/talker_flutter.dart' as _i207;

import 'core/app_route/navigation_module.dart' as _i241;
import 'core/service/shared_preferences.dart' as _i732;
import 'core/theme/cubit/theme_cubit.dart' as _i577;
import 'features/auth/data/datasource/auth_datasource.dart' as _i337;
import 'features/auth/data/datasource/user_datasource.dart' as _i937;
import 'features/auth/data/repo/auth_repo_impl.dart' as _i186;
import 'features/auth/domain/repo/auth_repo.dart' as _i442;
import 'features/auth/domain/usecases/get_current_user_usecase.dart' as _i630;
import 'features/auth/domain/usecases/login_usecase.dart' as _i206;
import 'features/auth/domain/usecases/logout_usecase.dart' as _i824;
import 'features/auth/domain/usecases/register_usecase.dart' as _i693;
import 'features/auth/presentation/bloc/auth_bloc.dart' as _i363;
import 'features/onboarding/data/datasource/onboarding_datasource.dart'
    as _i691;
import 'features/onboarding/data/repo/onboarding_repo_impl.dart' as _i139;
import 'features/onboarding/domain/repo/onboarding_repo.dart' as _i721;
import 'features/onboarding/domain/usecases/get_onboarding_usecase.dart'
    as _i312;
import 'features/onboarding/domain/usecases/save_onboarding_usecase.dart'
    as _i226;
import 'features/onboarding/presentation/bloc/onboarding_bloc.dart' as _i100;
import 'features/profile/data/datasources/profile_datasource.dart' as _i326;
import 'features/profile/data/repositories/profile_repository_impl.dart'
    as _i277;
import 'features/profile/domain/repositories/profile_repositories.dart'
    as _i1015;
import 'features/profile/domain/usecases/change_user_training_days_usecase.dart'
    as _i1014;
import 'features/profile/domain/usecases/change_user_training_plan_usecase.dart'
    as _i1046;
import 'features/profile/domain/usecases/get_user_profile_usecase.dart'
    as _i160;
import 'features/profile/domain/usecases/sync_user_stats_from_workouts_usecase.dart'
    as _i959;
import 'features/profile/domain/usecases/update_user_profile_usecase.dart'
    as _i140;
import 'features/profile/domain/usecases/update_user_stats_usecase.dart'
    as _i982;
import 'features/profile/presentation/bloc/profile_bloc.dart' as _i284;
import 'features/workout/data/datasource/workout_datasource.dart' as _i482;
import 'features/workout/data/repository/workout_repository_impl.dart' as _i596;
import 'features/workout/domain/repository/workout_repository.dart' as _i494;
import 'features/workout/domain/usecase/add_exercise_to_workout_usecase.dart'
    as _i0;
import 'features/workout/domain/usecase/calculate_workout_stats_usecase.dart'
    as _i108;
import 'features/workout/domain/usecase/create_workout_usecase.dart' as _i1046;
import 'features/workout/domain/usecase/delete_workout_usecase.dart' as _i407;
import 'features/workout/domain/usecase/end_workout_session_usecase.dart'
    as _i903;
import 'features/workout/domain/usecase/format_workout_time_usecase.dart'
    as _i588;
import 'features/workout/domain/usecase/get_workouts_usecase.dart' as _i948;
import 'features/workout/domain/usecase/group_workouts_by_day_usecase.dart'
    as _i703;
import 'features/workout/domain/usecase/remove_exercise_from_workout_usecase.dart'
    as _i971;
import 'features/workout/domain/usecase/update_exercise_in_workout_usecase.dart'
    as _i880;
import 'features/workout/domain/usecase/update_workout_usecase.dart' as _i540;
import 'features/workout/domain/usecase/validate_workout_creation_usecase.dart'
    as _i589;
import 'features/workout/presentation/bloc/workout_bloc.dart' as _i959;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final navigationModule = _$NavigationModule();
    gh.factory<_i588.FormatWorkoutTimeUsecase>(
      () => _i588.FormatWorkoutTimeUsecase(),
    );
    gh.factory<_i703.GroupWorkoutsByDayUsecase>(
      () => _i703.GroupWorkoutsByDayUsecase(),
    );
    gh.factory<_i589.ValidateWorkoutCreationUsecase>(
      () => _i589.ValidateWorkoutCreationUsecase(),
    );
    gh.factory<_i108.CalculateWorkoutStatsUsecase>(
      () => _i108.CalculateWorkoutStatsUsecase(),
    );
    gh.singleton<_i583.GoRouter>(() => navigationModule.router);
    gh.factory<_i326.ProfileDataSource>(
      () => _i326.ProfileDataSourceImpl(
        gh<_i974.FirebaseFirestore>(),
        gh<_i457.FirebaseStorage>(),
        gh<_i59.FirebaseAuth>(),
        gh<_i207.Talker>(),
      ),
    );
    gh.lazySingleton<_i732.SharedPreferencesService>(
      () => _i732.SharedPreferencesService(gh<_i460.SharedPreferences>()),
    );
    gh.factory<_i937.UserDataSource>(
      () => _i937.UserDataSourceImpl(gh<_i974.FirebaseFirestore>()),
    );
    gh.factory<_i1015.ProfileRepository>(
      () => _i277.ProfileRepositoryImpl(gh<_i326.ProfileDataSource>()),
    );
    gh.factory<_i691.OnboardingDataSource>(
      () => _i691.OnboardingDataSourceImpl(gh<_i974.FirebaseFirestore>()),
    );
    gh.lazySingleton<_i482.WorkoutDatasource>(
      () => _i482.WorkoutDatasourceImpl(gh<_i974.FirebaseFirestore>()),
    );
    gh.factory<_i494.WorkoutRepository>(
      () => _i596.WorkoutRepositoryImpl(gh<_i482.WorkoutDatasource>()),
    );
    gh.factory<_i1046.ChangeUserTrainingPlanUsecase>(
      () =>
          _i1046.ChangeUserTrainingPlanUsecase(gh<_i1015.ProfileRepository>()),
    );
    gh.factory<_i982.UpdateUserStatsUsecase>(
      () => _i982.UpdateUserStatsUsecase(gh<_i1015.ProfileRepository>()),
    );
    gh.factory<_i1014.ChangeUserTrainingDaysUsecase>(
      () =>
          _i1014.ChangeUserTrainingDaysUsecase(gh<_i1015.ProfileRepository>()),
    );
    gh.factory<_i971.RemoveExerciseFromWorkoutUsecase>(
      () =>
          _i971.RemoveExerciseFromWorkoutUsecase(gh<_i494.WorkoutRepository>()),
    );
    gh.factory<_i880.UpdateExerciseInWorkoutUsecase>(
      () => _i880.UpdateExerciseInWorkoutUsecase(gh<_i494.WorkoutRepository>()),
    );
    gh.factory<_i540.UpdateWorkoutUsecase>(
      () => _i540.UpdateWorkoutUsecase(gh<_i494.WorkoutRepository>()),
    );
    gh.factory<_i1046.CreateWorkoutUsecase>(
      () => _i1046.CreateWorkoutUsecase(gh<_i494.WorkoutRepository>()),
    );
    gh.factory<_i948.GetWorkoutsUsecase>(
      () => _i948.GetWorkoutsUsecase(gh<_i494.WorkoutRepository>()),
    );
    gh.factory<_i0.AddExerciseToWorkoutUsecase>(
      () => _i0.AddExerciseToWorkoutUsecase(gh<_i494.WorkoutRepository>()),
    );
    gh.factory<_i407.DeleteWorkoutUsecase>(
      () => _i407.DeleteWorkoutUsecase(gh<_i494.WorkoutRepository>()),
    );
    gh.factory<_i337.AuthDataSource>(
      () => _i337.AuthDataSourceImpl(
        gh<_i59.FirebaseAuth>(),
        gh<_i937.UserDataSource>(),
      ),
    );
    gh.factory<_i442.AuthRepo>(
      () => _i186.AuthRepoImpl(gh<_i337.AuthDataSource>()),
    );
    gh.factory<_i693.RegisterUsecase>(
      () => _i693.RegisterUsecase(authRepo: gh<_i442.AuthRepo>()),
    );
    gh.factory<_i206.LoginUsecase>(
      () => _i206.LoginUsecase(authRepo: gh<_i442.AuthRepo>()),
    );
    gh.factory<_i824.LogoutUsecase>(
      () => _i824.LogoutUsecase(authRepo: gh<_i442.AuthRepo>()),
    );
    gh.factory<_i160.GetUserProfileUsecase>(
      () => _i160.GetUserProfileUsecase(gh<_i1015.ProfileRepository>()),
    );
    gh.factory<_i140.UpdateUserProfileUsecase>(
      () => _i140.UpdateUserProfileUsecase(gh<_i1015.ProfileRepository>()),
    );
    gh.lazySingleton<_i577.ThemeCubit>(
      () => _i577.ThemeCubit(gh<_i732.SharedPreferencesService>()),
    );
    gh.factory<_i721.OnboardingRepo>(
      () => _i139.OnboardingRepoImpl(
        dataSource: gh<_i691.OnboardingDataSource>(),
        auth: gh<_i59.FirebaseAuth>(),
      ),
    );
    gh.factory<_i630.GetCurrentUserIdUsecase>(
      () => _i630.GetCurrentUserIdUsecase(gh<_i442.AuthRepo>()),
    );
    gh.factory<_i959.SyncUserStatsFromWorkoutsUsecase>(
      () => _i959.SyncUserStatsFromWorkoutsUsecase(
        gh<_i982.UpdateUserStatsUsecase>(),
      ),
    );
    gh.factory<_i284.ProfileBloc>(
      () => _i284.ProfileBloc(
        gh<_i630.GetCurrentUserIdUsecase>(),
        gh<_i160.GetUserProfileUsecase>(),
        gh<_i140.UpdateUserProfileUsecase>(),
        gh<_i1046.ChangeUserTrainingPlanUsecase>(),
        gh<_i1014.ChangeUserTrainingDaysUsecase>(),
      ),
    );
    gh.factory<_i312.GetOnboardingUsecase>(
      () => _i312.GetOnboardingUsecase(
        onboardingRepo: gh<_i721.OnboardingRepo>(),
      ),
    );
    gh.factory<_i226.SaveOnboardingUsecase>(
      () => _i226.SaveOnboardingUsecase(
        onboardingRepo: gh<_i721.OnboardingRepo>(),
      ),
    );
    gh.factory<_i363.AuthBloc>(
      () => _i363.AuthBloc(
        gh<_i693.RegisterUsecase>(),
        gh<_i206.LoginUsecase>(),
        gh<_i630.GetCurrentUserIdUsecase>(),
        gh<_i824.LogoutUsecase>(),
      ),
    );
    gh.factory<_i100.OnboardingBloc>(
      () => _i100.OnboardingBloc(
        gh<_i226.SaveOnboardingUsecase>(),
        gh<_i312.GetOnboardingUsecase>(),
      ),
    );
    gh.factory<_i903.EndWorkoutSessionUsecase>(
      () => _i903.EndWorkoutSessionUsecase(
        gh<_i494.WorkoutRepository>(),
        gh<_i959.SyncUserStatsFromWorkoutsUsecase>(),
      ),
    );
    gh.factory<_i959.WorkoutBloc>(
      () => _i959.WorkoutBloc(
        gh<_i948.GetWorkoutsUsecase>(),
        gh<_i1046.CreateWorkoutUsecase>(),
        gh<_i540.UpdateWorkoutUsecase>(),
        gh<_i407.DeleteWorkoutUsecase>(),
        gh<_i0.AddExerciseToWorkoutUsecase>(),
        gh<_i880.UpdateExerciseInWorkoutUsecase>(),
        gh<_i971.RemoveExerciseFromWorkoutUsecase>(),
        gh<_i903.EndWorkoutSessionUsecase>(),
        gh<_i108.CalculateWorkoutStatsUsecase>(),
        gh<_i703.GroupWorkoutsByDayUsecase>(),
        gh<_i588.FormatWorkoutTimeUsecase>(),
        gh<_i589.ValidateWorkoutCreationUsecase>(),
        gh<_i630.GetCurrentUserIdUsecase>(),
      ),
    );
    return this;
  }
}

class _$NavigationModule extends _i241.NavigationModule {}
