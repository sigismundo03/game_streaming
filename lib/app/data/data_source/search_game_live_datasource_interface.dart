import 'package:either_dart/either.dart';
import 'package:game_streaming/app/domain/entities/game_live.dart';

abstract class SearchGameLiveDataSourceInterface {
  Future<Either<String, List<GameLive>>> call();
}
