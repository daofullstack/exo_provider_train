import 'dart:io';
import 'dart:async';
import '../services/student_service.dart';

void main(){
  loadStudent();
  tech1();
  tech2();
  tech3();

}


tech1(){
  print("temps");
}

tech2(){

  var duree= Duration(seconds: 10);
  Future.delayed(duree,()=> print("du"));
  //sleep(duree);
}
tech3(){
  print(" gagner");
}
