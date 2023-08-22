import 'package:either_dart/either.dart';

import '../entities/watch_live.dart';

abstract class SearchWatchLiveRepositoriesInterface {
  Future<Either<String, WatchLive>> call();
}
