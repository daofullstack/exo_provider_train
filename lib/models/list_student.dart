
import 'package:flutter_ap/models/student_model.dart';

class ListStudent {
  final List<Student> listStudent;

  ListStudent({this.listStudent});

  factory ListStudent.fromJson(List<dynamic> json){
    List<Student> listes = List<Student>();
    listes= json.map((x) => Student.fromJson(x)).toList();
    return ListStudent(
        listStudent:listes,
    );
  }


}