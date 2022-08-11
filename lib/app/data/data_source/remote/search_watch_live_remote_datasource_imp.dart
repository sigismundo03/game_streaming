import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter/services.dart';
import 'package:game_streaming/app/data/data_source/search_watch_live_datasource_interface.dart';
import 'package:game_streaming/app/data/dto/game_categories_dto.dart';
import 'package:game_streaming/app/data/dto/game_live_dto.dart';
import 'package:game_streaming/app/domain/entities/watch_live.dart';

class SearchWatchLiveRemoteDataSourceImp
    implements SearchWatchLiveDataSourceInterfarce {
  @override
  Future<Either<String, WatchLive>> call() async {
    //Todo:(Sigis) melhoria aqui criar dois future para consumir separado-
    final result = await rootBundle.loadString('json/game_live.json');
    final list = jsonDecode(result) as List;
    var listGame = list.map((e) => GameLiveDTO.fromJson(e)).toList();
    final result2 = await rootBundle.loadString('json/game_categories.json');
    final list2 = jsonDecode(result2) as List;
    final listcategories =
        list2.map((e) => GameCategoriesDTo.fromJson(e)).toList();
    var watchLive =
        WatchLive(listGameLive: listGame, listGameCategorie: listcategories);

    return Right(watchLive);
  }
}
