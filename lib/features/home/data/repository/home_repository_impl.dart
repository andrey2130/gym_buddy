import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/features/home/data/datasources/home_datasource_impl.dart';

import 'package:gym_buddy/features/home/data/models/home_overview_model.dart';
import 'package:gym_buddy/features/home/domain/entities/home_overview_entity.dart';
import 'package:gym_buddy/features/home/domain/repository/home_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final HomeDataSource _dataSource;

  HomeRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, HomeOverviewEntity>> getHomeOverview(
    String uid,
  ) async {
    try {
      final model = await _dataSource.getHomeOverview(uid);
      return Right(model.toEntity());
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
