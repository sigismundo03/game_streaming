import 'package:either_dart/either.dart';
import 'package:game_streaming/app/Domain/entities/watch_live.dart';
import 'package:game_streaming/app/Domain/usecases/watch_live/search_watch_live_usecase_interface.dart';
import 'package:game_streaming/app/data/data_source/search_watch_live_datasource_interface.dart';

class SearchWatchLiveRepositoriesImp
    implements SearchWatchLiveUseCaseInterface {
  final SearchWatchLiveDataSourceInterfarce _dataSouce;

  SearchWatchLiveRepositoriesImp(this._dataSouce);
  @override
  Future<Either<String, WatchLive>> call() {
    return _dataSouce.call();
  }
}
