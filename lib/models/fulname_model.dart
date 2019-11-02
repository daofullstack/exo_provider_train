class Fulname {

  final int idFulname;
  final String name;
  final String username;

  Fulname({this.idFulname,this.name, this.username});
  factory Fulname.fromJson(Map<String, dynamic> ful){
    //final adr= ful["name"] as List;
    //var data = List.from(adr);
    return Fulname(
      idFulname: ful["id"],
      name: ful["name"],
      username:ful["username"],
    );
  }
}