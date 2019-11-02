import 'fulname_model.dart';


class Student {
  final int id;
  final String name;
  final String matricule;
  final Fulname fulname;
  final List<String> adresse;
  Student({this.id,this.name, this.matricule,this.adresse,this.fulname});
  factory Student.fromJson(Map<String, dynamic> json){
    final adr= json["adresse"] as List;
    List<String> data= new List.from(adr);
     return Student(
         id: json["id"],
         name: json["name"],
         matricule:json["matricule"],
         adresse: data,
         fulname: Fulname.fromJson(json["fulename"])
         //adresse: json["adresse"].cast<String>()
     );
  }

}
