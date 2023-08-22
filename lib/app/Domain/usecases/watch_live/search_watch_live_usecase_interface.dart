import 'package:either_dart/either.dart';

import '../../entities/watch_live.dart';

abstract class SearchWatchLiveUseCaseInterface {
  Future<Either<String, WatchLive>> call();
}
