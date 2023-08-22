import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter/services.dart';
import 'package:game_streaming/app/data/data_source/search_game_live_datasource_interface.dart';
import 'package:game_streaming/app/data/dto/game_live_dto.dart';

import '../../../Domain/entities/game_live.dart';

class SearchGameLiveRemoteDataSource
    implements SearchGameLiveDataSourceInterface {
  @override
  Future<Either<String, List<GameLive>>> call() async {
    final result = await rootBundle.loadString('json/game_live.json');
    final list = jsonDecode(result) as List;
    return Right(list.map((e) => GameLiveDTO.fromMap(e)).toList());
  }
}
