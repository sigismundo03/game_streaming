import 'package:either_dart/either.dart';

import '../../Domain/entities/game_categories.dart';

abstract class SearchGameCategoriesDataSourceInterface {
  Future<Either<String, List<GameCategories>>> call();
}
