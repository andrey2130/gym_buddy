import 'package:dartz/dartz.dart';
import 'package:gym_buddy/core/error/failure.dart';
import 'package:gym_buddy/core/usecases/usecase.dart';
import 'package:gym_buddy/features/workout/domain/params/format_time_params.dart';
import 'package:injectable/injectable.dart';

@injectable
class FormatWorkoutTimeUsecase
    implements UseCase<Either<Failure, String>, FormatTimeParams> {
  @override
  Future<Either<Failure, String>> call(FormatTimeParams params) {
    try {
      switch (params.formatType) {
        case TimeFormatType.time:
          return Future.value(Right(_formatTime(params.dateTime!)));
        case TimeFormatType.duration:
          return Future.value(Right(_formatDuration(params.minutes!)));
        case TimeFormatType.date:
          return Future.value(Right(_formatDate(params.dateTime!)));
      }
    } catch (e) {
      return Future.value(Left(Failure(message: 'Failed to format time: $e')));
    }
  }

  String _formatTime(DateTime time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }

  String _formatDuration(int minutes) {
    final hours = minutes ~/ 60;
    final mins = minutes % 60;
    if (hours > 0) {
      return '${hours}h ${mins}m';
    }
    return '${mins}m';
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}

enum TimeFormatType { time, duration, date }
