import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/features/home/domain/entities/home_overview_entity.dart';

abstract class HomeRepository {
  Future<Either<Failure, HomeOverviewEntity>> getHomeOverview(String uid);
}
