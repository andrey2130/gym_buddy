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
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

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
import 'features/profile/domain/usecases/get_user_profile_usecase.dart'
    as _i160;
import 'features/profile/domain/usecases/update_user_profile_usecase.dart'
    as _i140;
import 'features/profile/presentation/bloc/profile_bloc.dart' as _i284;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i937.UserDataSource>(
      () => _i937.UserDataSourceImpl(gh<_i974.FirebaseFirestore>()),
    );
    gh.factory<_i326.ProfileDataSource>(
      () => _i326.ProfileDataSourceImpl(gh<_i974.FirebaseFirestore>()),
    );
    gh.factory<_i691.OnboardingDataSource>(
      () => _i691.OnboardingDataSourceImpl(gh<_i974.FirebaseFirestore>()),
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
    gh.factory<_i721.OnboardingRepo>(
      () => _i139.OnboardingRepoImpl(
        dataSource: gh<_i691.OnboardingDataSource>(),
        auth: gh<_i59.FirebaseAuth>(),
      ),
    );
    gh.factory<_i630.GetCurrentUserIdUsecase>(
      () => _i630.GetCurrentUserIdUsecase(gh<_i442.AuthRepo>()),
    );
    gh.factory<_i1015.ProfileRepository>(
      () => _i277.ProfileRepositoryImpl(gh<_i326.ProfileDataSource>()),
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
    gh.factory<_i160.GetUserProfileUsecase>(
      () => _i160.GetUserProfileUsecase(gh<_i1015.ProfileRepository>()),
    );
    gh.factory<_i140.UpdateUserProfileUsecase>(
      () => _i140.UpdateUserProfileUsecase(gh<_i1015.ProfileRepository>()),
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
    gh.factory<_i284.ProfileBloc>(
      () => _i284.ProfileBloc(
        gh<_i630.GetCurrentUserIdUsecase>(),
        gh<_i160.GetUserProfileUsecase>(),
        gh<_i140.UpdateUserProfileUsecase>(),
      ),
    );
    return this;
  }
}
