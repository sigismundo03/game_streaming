import 'package:flutter_test/flutter_test.dart';
import 'package:game_streaming/app/domain/entities/game_categories.dart';
import 'package:game_streaming/app/domain/entities/game_live.dart';
import 'package:game_streaming/app/domain/entities/watch_live.dart';

void main() {
  WatchLive watchLive = WatchLive(
    listGameLive: [
      GameLive(
        image: '',
        amountWatching: '',
        isTopStreamers: true,
      ),
      GameLive(
        image: '',
        amountWatching: '',
        isTopStreamers: true,
      ),
      GameLive(
        image: '',
        amountWatching: '',
        isTopStreamers: true,
      ),
      GameLive(
        image: '',
        amountWatching: '',
        isTopStreamers: false,
      ),
      GameLive(
        image: '',
        amountWatching: '',
        isTopStreamers: false,
      ),
      GameLive(
        image: '',
        amountWatching: '',
        isTopStreamers: false,
      ),
      GameLive(
        image: '',
        amountWatching: '',
        isTopStreamers: false,
      ),
    ],
    listGameCategorie: [
      GameCategories(
        image: '',
        name: 'game',
      ),
      GameCategories(
        image: '',
        name: 'game2',
      ),
      GameCategories(
        image: '',
        name: 'game3',
      ),
      GameCategories(
        image: '',
        name: 'game4',
      ),
      GameCategories(
        image: '',
        name: 'game5',
      ),
      GameCategories(
        image: '',
        name: 'game6',
      ),
    ],
  );
  group('Entities', () {
    TestWidgetsFlutterBinding.ensureInitialized();
    test('Buscar alertorios os 5 primeiras lives ', () {
      final result = watchLive.randomGame();
      expect(result.length, 5);
    });
    test('Buscar  os tops lives ', () {
      final result = watchLive.topStreamers();
      expect(result.isNotEmpty, true);
    });
    test('Buscar alertorios os 5 categories  ', () {
      final result = watchLive.randomGameCategories();
      expect(result.length, 5);
    });
  });
}
