import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter/services.dart';
import 'package:game_streaming/app/data/data_source/search_game_categories_datasource_interface.dart';
import 'package:game_streaming/app/data/dto/game_categories_dto.dart';

import '../../../Domain/entities/game_categories.dart';

class SearchGameCategoriesRemoteDataSource
    implements SearchGameCategoriesDataSourceInterface {
  @override
  Future<Either<String, List<GameCategories>>> call() async {
    final result = await rootBundle.loadString('json/game_categories.json');
    final list = jsonDecode(result) as List;
    return Right(list.map((e) => GameCategoriesDTo.fromMap(e)).toList());
  }
}
