import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

import 'exemple2.dart';

class ExoProvider extends StatefulWidget {
  static const routeName="/accueil-exo-provider";
  @override
  _ExoProviderState createState() => _ExoProviderState();
}

class _ExoProviderState extends State<ExoProvider> {
  bool isActive= false;
  int currentIndex=0;
  List<Map<String , dynamic>> IconD =[
    { "nom":Icons.add , "text": "ajout"},
    { "nom":Icons.search , "text": "ff"},
    { "nom":Icons.description , "text": "vvvv"},
    { "nom":Icons.access_alarm , "text": "zzz"}
  ];
  Color getColor (int lIndex){
    return(currentIndex == lIndex ) ? Colors.red : Colors.grey;
  }

  void selectedIndex(lIndex){
    setState(() {
      currentIndex=lIndex;
    });
  }
  void change(){
    isActive= !isActive;
  }
  void change2(int i){
    listIcon.forEach((icon)=>icon.isActif=false);
    listIcon[i].isActif= !listIcon[i].isActif;
  }
List<CustomItem> listIcon =[
  CustomItem(nom: Icon(Icons.access_alarm),iconData: Text("sssss"),isActif: true),
  CustomItem(nom: Icon(Icons.done),iconData: Text("vvvv"),isActif: false),
  CustomItem(nom: Icon(Icons.edit),iconData: Text("jjjjj"),isActif: false),
  CustomItem(nom: Icon(Icons.add),iconData: Text("ggggg"),isActif: true),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_backspace),
        ),
        title: Text("exo provider"),
      ),

      bottomNavigationBar: BottomAppBar(
        child:Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          child:ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listIcon.length,
              itemBuilder: (ctx, i){
                return InkWell(
                  onTap: (){
                    selectedIndex(i);
                  },
                  child: Column(
                    children: <Widget>[
                     InkWell(
                       onTap: (){
                         setState(() {
                           change2(i);
                         });
                       },
                       child: Container(
                         child: listIcon[i].nom,
                           color:listIcon[i].isActif ? Colors.red: Colors.grey ,
                       ),
                     )
                      //listIcon[i].iconData,
                      //listIcon[i].isActif,
                      //Icon(IconD[i]["nom"],color: getColor(i),semanticLabel: IconD[i]["text"],)
                    ],
                  ),
                );
              }),
        )
      ),
    );
  }
}
