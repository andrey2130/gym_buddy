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
import 'features/auth/domain/usecases/register_usecase.dart' as _i693;
import 'features/auth/presentation/bloc/auth_bloc.dart' as _i363;

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
    gh.factory<_i337.AuthDatasource>(
      () => _i337.AuthDatasourceImpl(
        firebaseAuth: gh<_i59.FirebaseAuth>(),
        userDataSource: gh<_i937.UserDataSource>(),
      ),
    );
    gh.factory<_i442.AuthRepo>(
      () => _i186.AuthRepoImpl(authDatasource: gh<_i337.AuthDatasource>()),
    );
    gh.factory<_i693.RegisterUsecase>(
      () => _i693.RegisterUsecase(authRepo: gh<_i442.AuthRepo>()),
    );
    gh.factory<_i363.AuthBloc>(
      () => _i363.AuthBloc(gh<_i693.RegisterUsecase>()),
    );
    return this;
  }
}
