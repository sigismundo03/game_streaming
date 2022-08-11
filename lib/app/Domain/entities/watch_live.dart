import 'package:game_streaming/app/domain/entities/game_categories.dart';
import 'package:game_streaming/app/domain/entities/game_live.dart';

class WatchLive {
  List<GameLive> listGameLive;
  List<GameCategories> listGameCategorie;
  WatchLive({
    required this.listGameLive,
    required this.listGameCategorie,
  });
}
