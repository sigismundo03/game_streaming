import 'package:either_dart/either.dart';
import 'package:game_streaming/app/Domain/entities/watch_live.dart';
import 'package:game_streaming/app/Domain/repositories_interface/search_watch_live_repositories_interface.dart';
import 'package:game_streaming/app/Domain/usecases/watch_live/search_watch_live_usecase_interface.dart';

class SearchWatchLiveImp implements SearchWatchLiveUseCaseInterface {
  final SearchWatchLiveRepositoriesInterface _repositories;

  SearchWatchLiveImp(this._repositories);
  @override
  Future<Either<String, WatchLive>> call() {
    return _repositories.call();
  }
}
