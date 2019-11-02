import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

class ExoProvider2 extends StatefulWidget {
  static const routeName="/accueil-exo-provider-2";
  @override
  _ExoProviderState createState() => _ExoProviderState();
}

class _ExoProviderState extends State<ExoProvider2> {

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
          child:Consumer<listBar>(
            builder: (context, ab ,_)=>
          ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ab.listDeBar.length,
                itemBuilder: (ctx, i){
                  return InkWell(
                    onTap: (){
                      ab.tapedItem(ab.listDeBar[i]);
                    },
                    child: Column(
                      children: <Widget>[
                       Icon(
                         ab.listDeBar[i].icon,
                         color: ab.listDeBar[i].isActived ? Colors.red :Colors.grey ,
                       ),
                        Text( ab.listDeBar[i].text)
                        //listIcon[i].iconData,
                        //listIcon[i].isActif,
                        //Icon(IconD[i]["nom"],color: getColor(i),semanticLabel: IconD[i]["text"],)
                      ],
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
