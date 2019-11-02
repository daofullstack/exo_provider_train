import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Wagon{
  final double hauteur;
  final double largeur;
  final Color couleur;

  Wagon(this.hauteur, this.largeur, this.couleur);

}
Color pickerColor = Color(0xff443a49);
Color currentColor = Color(0xff443a49);
class LesWagons with ChangeNotifier {
  List<Wagon> _wagons =[
    Wagon(100.0 ,150.0 , Colors.yellowAccent),
    Wagon(100.0 ,100.0 , Colors.grey),
    Wagon(100.0 ,100.0 , Colors.greenAccent),
    Wagon(100.0 ,100.0 , Colors.blue)

  ];
  List<Wagon> get wagons{
    return [..._wagons];
  }
  void changeColor(Color color) {
    //setState(() => pickerColor = color);
    pickerColor = color;
    notifyListeners();
  }

  void ajoutWagon(double h, double l, Color c
      ){
    _wagons.add(Wagon(h, l, c));
    notifyListeners();
  }
}