import 'package:flutter_test/flutter_test.dart';
import 'package:game_streaming/app/data/data_source/remote/search_game_categories_remote_datasource_imp.dart';
import 'package:game_streaming/app/data/data_source/remote/search_game_live_remote_datasource_imp.dart';
import 'package:game_streaming/app/data/data_source/remote/search_watch_live_remote_datasource_imp.dart';
import 'package:game_streaming/app/data/data_source/search_watch_live_datasource_interface.dart';

main() {
  SearchWatchLiveDataSourceInterfarce dataSource =
      SearchWatchLiveRemoteDataSourceImp(
    SearchGameCategoriesRemoteDataSource(),
    SearchGameLiveRemoteDataSource(),
  );
  group('DataSource', () {
    TestWidgetsFlutterBinding.ensureInitialized();
    test('Buscar Lives ', () async {
      final result = await dataSource.call();

      expect(result.isRight, true);
    });
  });
}
