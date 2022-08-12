import 'package:flutter_test/flutter_test.dart';
import 'package:game_streaming/app/data/data_source/remote/search_game_categories_remote_datasource_imp.dart';
import 'package:game_streaming/app/data/data_source/search_game_categories_datasource_interface.dart';

main() {
  SearchGameCategoriesDataSourceInterface categoriesDataSource =
      SearchGameCategoriesRemoteDataSource();
  group('DataSource', () {
    TestWidgetsFlutterBinding.ensureInitialized();
    test('Buscar categorias ', () async {
      final result = await categoriesDataSource.call();

      expect(result.isRight, true);
    });
  });
}
