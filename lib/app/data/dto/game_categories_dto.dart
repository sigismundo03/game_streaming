import 'dart:convert';

import 'package:game_streaming/app/domain/entities/game_categories.dart';

class GameCategoriesDTo extends GameCategories {
  String nameCategorie;
  String imageSVG;
  GameCategoriesDTo({
    required this.nameCategorie,
    required this.imageSVG,
  }) : super(image: imageSVG, name: nameCategorie);

  Map<String, dynamic> toMap() {
    return {
      'nameCategorie': nameCategorie,
      'imageSVG': imageSVG,
    };
  }

  factory GameCategoriesDTo.fromMap(Map<String, dynamic> map) {
    return GameCategoriesDTo(
      nameCategorie: map['nameCategorie'] ?? '',
      imageSVG: map['imageSVG'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory GameCategoriesDTo.fromJson(String source) =>
      GameCategoriesDTo.fromMap(json.decode(source));
}
