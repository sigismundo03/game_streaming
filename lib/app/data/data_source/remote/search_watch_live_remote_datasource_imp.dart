import 'package:either_dart/either.dart';
import 'package:game_streaming/app/data/data_source/search_game_categories_datasource_interface.dart';
import 'package:game_streaming/app/data/data_source/search_game_live_datasource_interface.dart';
import 'package:game_streaming/app/data/data_source/search_watch_live_datasource_interface.dart';
import 'package:game_streaming/app/data/dto/watch_live_dto.dart';

import '../../../Domain/entities/watch_live.dart';

class SearchWatchLiveRemoteDataSourceImp
    implements SearchWatchLiveDataSourceInterfarce {
  final SearchGameCategoriesDataSourceInterface _categoriesDataSource;
  final SearchGameLiveDataSourceInterface _gameLiveDataSource;

  SearchWatchLiveRemoteDataSourceImp(
      this._categoriesDataSource, this._gameLiveDataSource);
  @override
  Future<Either<String, WatchLive>> call() async {
    final listcategories = await _categoriesDataSource.call();
    final listLive = await _gameLiveDataSource.call();

    if (listLive.isRight && listcategories.isRight) {
      return Right(WatchLiveDto.fromMap(
        listLive.right,
        listcategories.right,
      ));
    } else {
      return const Left('erro');
    }
  }
}
