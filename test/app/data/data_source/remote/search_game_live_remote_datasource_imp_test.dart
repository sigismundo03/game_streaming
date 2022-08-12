import 'package:flutter_test/flutter_test.dart';
import 'package:game_streaming/app/data/data_source/remote/search_game_live_remote_datasource_imp.dart';
import 'package:game_streaming/app/data/data_source/search_game_live_datasource_interface.dart';

main() {
  SearchGameLiveDataSourceInterface dataSource =
      SearchGameLiveRemoteDataSource();
  group('DataSource', () {
    TestWidgetsFlutterBinding.ensureInitialized();
    test('Buscar Lives ', () async {
      final result = await dataSource.call();

      expect(result.isRight, true);
    });
  });
}
