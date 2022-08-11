import 'package:either_dart/either.dart';
import 'package:game_streaming/app/domain/entities/watch_live.dart';

abstract class SearchWatchLiveDataSourceInterfarce {
  Future<Either<String, WatchLive>> call();
}
