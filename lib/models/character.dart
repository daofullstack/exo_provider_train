import 'package:flutter/material.dart';

class Character {
  final String name;
  final String imagePath;
  final String description;
  final List<Color> colors;
  Character({this.name, this.imagePath, this.description, this.colors});
}

List characters =[
  Character(
    name: "kevin",
    imagePath: "assets/images/eau.png",
    description:
      "hbb yghhhvv yygysgojihuh huoihihuhhihuhidsihioh hhuihuihguihuh ugugiugusduhiohi uuhuhuhuisd uguhuhu",
    colors: [Colors.orange.shade200, Colors.deepOrange.shade400]

  ),
  Character(
      name: "agnes",
      imagePath: "assets/images/oiseau.png",
      description:
      "hbbd hhgsuuhuhuh uhuhuhiugugug uhiuhuihuihugu guhuhuih uguguhuh uhuigyigugu ",
      colors: [Colors.orange.shade200, Colors.deepOrange.shade400]

  ),
];