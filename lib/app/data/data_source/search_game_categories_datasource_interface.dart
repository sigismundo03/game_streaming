import 'package:either_dart/either.dart';
import 'package:game_streaming/app/domain/entities/game_categories.dart';

abstract class SearchGameCategoriesDataSourceInterface {
  Future<Either<String, List<GameCategories>>> call();
}
