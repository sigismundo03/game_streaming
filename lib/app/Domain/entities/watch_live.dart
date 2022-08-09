import 'package:game_streaming/app/Domain/entities/game_categories.dart';

class WatchLive {
  String image;
  String amountWatching;
  String isTopStreamers;
  List<GameCategories> listGameCategorie;
  WatchLive({
    required this.image,
    required this.amountWatching,
    required this.isTopStreamers,
    required this.listGameCategorie,
  });
}
