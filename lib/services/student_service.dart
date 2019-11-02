import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../models/student_model.dart';
import '../models/fulname_model.dart';



Future loadJson () async{
  return await rootBundle.loadString("assets/student.json");
}
Future loadStudent () async{
  final recup = await loadJson();
  final response=json.decode(recup);
  final Student student = Student.fromJson(response);

  print(student.id);
  print(student.name);
  print(student.matricule);
  print(student.adresse);
  print(student.fulname.name);
  print(student.fulname.idFulname);
  print(student.fulname.username);
}



