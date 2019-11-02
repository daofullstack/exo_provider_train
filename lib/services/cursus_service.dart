import 'dart:async';
import 'dart:convert';
import 'dart:core' ;
import 'package:flutter/services.dart';

import '../models/cursus_model.dart';
Future chargerJson() async{
  return await rootBundle.loadString("assets/cursus_nan.json");
}
/*


Future chargerCursus() async{
  final recupJson= await chargerJson();
  Iterable reponse= json.decode(recupJson);
  List<Cursus> cursus= reponse.map((i)=>Cursus.fromJson(i)).toList();
  print("**********************************************");
  print(cursus[0].level[0].stage[0].cour[0].video[0].titre);// nom cursus
  print(cursus[0].level[0].nom);// nom cursus
  print("**********************************************");

  return cursus;
  //final reponse=json.decode(recupJson);
  //final Cursus cursus = Cursus.fromJson(reponse[0]);
  //print(cursus);
  //final Cursus cursus=Cursus.fromJson(reponse);
}


void main (){
  chargerCursus();
}

/*

  print(cursus[0].level[0].stage[0].cour[0].video[0].titre);// nom cursus

* */
*/
 class CursusService{
   static Future<List<Cursus>> getAll () async{
     String reponse = await chargerJson();
     List<Cursus> cursus =List();
     List data = json.decode(reponse);
     data.forEach((f)=> cursus.add(Cursus.fromJson(f)));
     return cursus;
   }
 }

