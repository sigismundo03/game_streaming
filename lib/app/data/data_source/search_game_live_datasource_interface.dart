import 'package:either_dart/either.dart';

import '../../Domain/entities/game_live.dart';

abstract class SearchGameLiveDataSourceInterface {
  Future<Either<String, List<GameLive>>> call();
}
