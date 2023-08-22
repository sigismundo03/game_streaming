import '../../Domain/entities/game_categories.dart';
import '../../Domain/entities/game_live.dart';
import '../../Domain/entities/watch_live.dart';

class WatchLiveDto extends WatchLive {
  List<GameLive> listGameLiveDto;
  List<GameCategories> listGameCategorieDto;
  WatchLiveDto({
    required this.listGameLiveDto,
    required this.listGameCategorieDto,
  }) : super(
            listGameCategorie: listGameCategorieDto,
            listGameLive: listGameLiveDto);

  factory WatchLiveDto.fromMap(
      List<GameLive> listLive, List<GameCategories> listGameCategories) {
    return WatchLiveDto(
      listGameCategorieDto: listGameCategories,
      listGameLiveDto: listLive,
    );
  }
}
