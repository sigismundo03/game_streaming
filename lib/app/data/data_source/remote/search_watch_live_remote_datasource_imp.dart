import 'package:either_dart/either.dart';
import 'package:game_streaming/app/Domain/entities/watch_live.dart';
import 'package:game_streaming/app/data/data_source/search_watch_live_datasource_interface.dart';

class SearchWatchLiveRemoteDataSourceImp
    implements SearchWatchLiveDataSourceInterfarce {
  @override
  Future<Either<String, WatchLive>> call() {
    throw UnimplementedError();
  }
}
