import 'package:game_streaming/app/domain/entities/game_categories.dart';
import 'package:game_streaming/app/domain/entities/game_live.dart';
import 'package:game_streaming/app/domain/entities/watch_live.dart';

class WatchLiveDto extends WatchLive {
  List<GameLive> listGameLiveDto;
  List<GameCategories> listGameCategorieDto;
  WatchLiveDto({
    required this.listGameLiveDto,
    required this.listGameCategorieDto,
  }) : super(
            listGameCategorie: listGameCategorieDto,
            listGameLive: listGameLiveDto);

  factory WatchLiveDto.fromJson(
      List<GameLive> listLive, List<GameCategories> listGameCategories) {
    return WatchLiveDto(
      listGameCategorieDto: listGameCategories,
      listGameLiveDto: listLive,
    );
  }
}
