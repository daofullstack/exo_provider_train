import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bar {
  final  IconData icon;
  final String text ;
  bool isActived;
  Bar({this.text, this.icon, this.isActived=false});
}

class listBar with ChangeNotifier{

  int currentIndex=0;
  List<Bar> listDeBar =[
    Bar(icon:Icons.access_alarm,text: "bbbbbb",isActived: true),
    Bar(icon:Icons.done,text: "bbbbbb",isActived: true),
    Bar(icon:Icons.headset,text: "bbbbbb",isActived: false),
    Bar(icon:Icons.keyboard_backspace,text: "bbbbbb",isActived: true),
  ];
  void changeIndex(int indexList){
    currentIndex=indexList;
    notifyListeners();
  }
  void tapedItem(Bar icon){
    listDeBar.forEach((icon)=>icon.isActived=false);
    listDeBar[listDeBar.indexOf(icon)].isActived=true;
    notifyListeners();
  }

}

