import 'dart:convert';

import '../../Domain/entities/game_live.dart';

class GameLiveDTO extends GameLive {
  String nameGame;
  String nameAuthor;
  String imageGame;
  String imageAuthor;
  bool isTopStreamer;
  String amountWatchings;

  GameLiveDTO({
    required this.nameGame,
    required this.nameAuthor,
    required this.imageGame,
    required this.imageAuthor,
    required this.isTopStreamer,
    required this.amountWatchings,
  }) : super(
          amountWatching: amountWatchings,
          image: imageGame,
          isTopStreamers: isTopStreamer,
        );

  Map<String, dynamic> toMap() {
    return {
      'nameGame': nameGame,
      'nameAuthor': nameAuthor,
      'imageGame': imageGame,
      'imageAuthor': imageAuthor,
      'isTopStreamer': isTopStreamer,
      'amountWatchings': amountWatchings,
    };
  }

  factory GameLiveDTO.fromMap(Map<String, dynamic> map) {
    return GameLiveDTO(
      nameGame: map['nameGame'] ?? '',
      nameAuthor: map['nameAuthor'] ?? '',
      imageGame: map['imageGame'] ?? '',
      imageAuthor: map['imageAuthor'] ?? '',
      isTopStreamer: map['isTopStreamers'] ?? '',
      amountWatchings: map['amountWatching'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory GameLiveDTO.fromJson(String source) =>
      GameLiveDTO.fromMap(json.decode(source));
}
