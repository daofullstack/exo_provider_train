import 'dart:async';
import 'dart:convert';
import 'dart:core' ;
import 'package:flutter/services.dart';

import '../models/ecommerce.dart';
Future chargerJson() async{
  return await rootBundle.loadString("assets/e-commerce-json/e_commerce.json");
}
class CategoriesService{
  static Future<List<Categorie>> getAll () async{
    String reponse = await chargerJson();
    List<Categorie> categorie =List();
    List data = json.decode(reponse);
    data.forEach((f)=> categorie.add(Categorie.fromJson(f)));
    return categorie;
  }
}

