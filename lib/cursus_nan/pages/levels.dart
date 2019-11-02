import 'package:flutter/material.dart';

import '../../services/cursus_service.dart';
import '../../models/cursus_model.dart';
import 'detail_cour.dart';


class Levels extends StatefulWidget {

  var value;
  Levels(this.value, {Key key}) : super(key: key);
  @override
  _LevelsState createState() => _LevelsState();
}

class _LevelsState extends State<Levels> {

  Future<List<Cursus>> cursusData;


  @override
  void initState() {
    // TODO: implement initState

    cursusData = CursusService.getAll();
    super.initState();

    //CursusService.getAll().then((v) => print(v[0].nom));
  }

  @override
  Widget build(BuildContext context) {
     var v=widget.value.nom;
     //for (var stage in widget.value.level.stage)
    //print(widget.value.level[0].nom);

     //print(cursus[0].level[0].stage[0].cour[0].video[0].titre);// nom cursus
    return Scaffold(

      appBar: AppBar(
        title: Text("${widget.value.nom}  ¶ levels"),
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
        child: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              for (var i in widget.value.level)
              Column(children: <Widget>[
                Text(i.nom,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailCour()),
                        );
                      },
                      child: Card(
                          margin: const EdgeInsets.all(10.0),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child:Container(
                              height: MediaQuery.of(context).size.height/10,
                              width: MediaQuery.of(context).size.width/5,
                              child: Text("fe"),
                            ),
                          )),
                    ),

                  ],
                )
              ],),

              RaisedButton(
                color: Colors.blueGrey,
                child: Text("lire cour"),
                onPressed:(){
                  Navigator.of(context).pushNamed(DetailCour.routeName,);
                },
              ),
            ],
          )
        ),
      ),
    );
  }
}

