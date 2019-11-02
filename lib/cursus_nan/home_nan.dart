import 'package:flutter/material.dart';
import '../models/cursus_model.dart';
import 'pages/levels.dart';
import '../services/cursus_service.dart';

class HomeNan extends StatefulWidget {
  static const routeName="/cursus_nan";
  @override
  _HomeNanState createState() => _HomeNanState();

}

class _HomeNanState extends State<HomeNan> {
  Future<List<Cursus>> cursusData;

  @override
  void initState() {
    // TODO: implement initState

    cursusData = CursusService.getAll();
    super.initState();

    //CursusService.getAll().then((v) => print(v[0].nom));
  }

/*
  Future  chargerCursus() async{
    List <Cursus> lesCursus= await chargerCursus();
setState(() {
  if(lesCursus!= null){
    arr=lesCursus;
  }
});
  }
  */


  //List<String> mesCursus = ['PHP', 'HTML CSS', 'JS', 'MYSQL','RESEAU & SECURITE', 'GOLANG', 'FLUTTER'];

  @override
  Widget cursusList (String nb,var val){
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Levels(val)),
        );
      },
      child: Card(
          margin: const EdgeInsets.only(top:5.0),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:Container(
              height: MediaQuery.of(context).size.height/6,
              width: MediaQuery.of(context).size.width/3,
              child: Text(nb),
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: cursusData,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          List<Cursus> cursus = snapshot.data;
          return Scaffold(
            appBar: AppBar(
              title: Text("LISTE CURSUS"),
              elevation: 0,
              backgroundColor: Colors.grey[22],
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: (){
                  Navigator.pop(context);
                },
                color: Colors.white70,),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Icon(Icons.search),
                )
              ],
            ),
            body: Container(
              child:SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Text(
                      'Cursus NaN',
                      style: TextStyle(fontFamily: 'MonteSerrat', fontSize: 24.0),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Wrap(
                        spacing: 7,
                        runSpacing: 5,
                        children: <Widget>[
                          for (int i =0; i< cursus.length;i++)
                            cursusList(cursus[i].nom, cursus[i])
                        ],
                      ),

                    )
                  ],
                ),
              ),
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }


}

/*            ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext ctxt, int Index) {
                  return Text(mesCursus[Index]);
                }
            ),*/