import 'dart:math';

import 'package:game_streaming/app/Domain/entities/game_categories.dart';
import 'package:game_streaming/app/Domain/entities/game_live.dart';

class WatchLive {
  List<GameLive> listGameLive;
  List<GameCategories> listGameCategorie;
  WatchLive({
    required this.listGameLive,
    required this.listGameCategorie,
  });

  List<GameLive> randomGame() {
    Random random = Random();
    int amount = 5;
    List<GameLive> listGameRandom = [];

    for (int index = 0; index < amount; index++) {
      listGameRandom.add(listGameLive[random.nextInt(listGameLive.length)]);
    }

    return listGameRandom;
  }

  List<GameLive> topStreamers() {
    List<GameLive> topStreamers = [];

    for (var element in listGameLive) {
      if (element.isTopStreamers) {
        topStreamers.add(element);
      }
    }

    return topStreamers;
  }

  List<GameCategories> randomGameCategories() {
    Random random = Random();
    int amount = 5;
    List<GameCategories> listGameCategoriesRandom = [];

    for (int index = 0; index < amount; index++) {
      listGameCategoriesRandom
          .add(listGameCategorie[random.nextInt(listGameCategorie.length)]);
    }

    return listGameCategoriesRandom;
  }
}
