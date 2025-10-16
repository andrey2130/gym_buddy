import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/home/domain/entities/home_overview_entity.dart';
import 'package:gym_buddy/features/home/domain/params/get_home_overview_params.dart';
import 'package:gym_buddy/features/home/domain/repository/home_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetHomeOverviewUsecase
    implements
        UseCase<Either<Failure, HomeOverviewEntity>, GetHomeOverviewParams> {
  final HomeRepository _repository;
  GetHomeOverviewUsecase(this._repository);

  @override
  Future<Either<Failure, HomeOverviewEntity>> call(
    GetHomeOverviewParams params,
  ) {
    return _repository.getHomeOverview(params.uid);
  }
}
