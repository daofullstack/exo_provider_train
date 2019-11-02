import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'wagon.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class AccueilTrain extends StatelessWidget {
  static const routeName="/accueil-train";
  TextEditingController haut = TextEditingController();
  TextEditingController larg= TextEditingController();
  TextEditingController coul= TextEditingController();

  // create some values


// ValueChanged<Color> callback



  static BuildContext context;
  @override
  Widget build(BuildContext context) {
    final wag = Provider.of<LesWagons>(context,);
    final longueurWagon=wag.wagons.length;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('le tran roule'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Consumer<LesWagons>(

        builder: (_ , nom , ch) =>Container(
        height: MediaQuery.of(context).size.height,
        width:  MediaQuery.of(context).size.width,
        child:  Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.only(top: 40,bottom: 20),
                padding: EdgeInsets.only(top: 5,bottom: 5),
                height: MediaQuery.of(context).size.height/10,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                    //itemCount: longueurWagon,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        height:  MediaQuery.of(context).size.height/3,
                        padding: EdgeInsets.all(12.0),
                        width: MediaQuery.of(context).size.width/4,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle
                        ),
                        child: Text(" "),
                      ),
                     ...nom.wagons.map((f){
                       return cont(f.hauteur, f.largeur, f.couleur);
                     })
                    //cont(nom.wagons[1].hauteur, nom.wagons[1].largeur, nom.wagons[1].couleur)
                    ],
                  ),

              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.all(8.0),
                color: Colors.white10,

                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Builder(
                          builder: (context) {
                            return RaisedButton(
                                onPressed: () {
                                  // raise the [showDialog] widget
                                  showDialog(
                                    context: context,
                                    child: AlertDialog(
                                      title: const Text('Pick a color!'),
                                      content: SingleChildScrollView(
                                        child: ColorPicker(
                                          pickerColor: pickerColor,
                                          onColorChanged: nom.changeColor,
                                          enableLabel: true,
                                          pickerAreaHeightPercent: 0.8,
                                        ),
                                        // Use Material color picker:
                                        //
                                        // child: MaterialPicker(
                                        //   pickerColor: pickerColor,
                                        //   onColorChanged: changeColor,
                                        //   enableLabel: true, // only on portrait mode
                                        // ),
                                        //
                                        // Use Block color picker:
                                        //
                                        // child: BlockPicker(
                                        //   pickerColor: currentColor,
                                        //   onColorChanged: changeColor,
                                        // ),
                                      ),
                                      actions: <Widget>[
                                        FlatButton(
                                          child: const Text('Got it'),
                                          onPressed: () {
                                            currentColor = pickerColor;
                                            Navigator.of(context).pop();
                                            print(currentColor);
                                          },
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                //print('$coul,$larg, $haut'),
                                color: Colors.indigoAccent,
                                child: Text("color picker")
                            );
                          },
                        ),
                      ),
                    TextField(
                      keyboardType: TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                        labelText: "hauteur"
                      ),
                      controller: haut,
                      //onChanged: (v) => haut.text=v,
                    ),
                      TextField(
                        keyboardType: TextInputType.numberWithOptions(decimal: true),
                        decoration: InputDecoration(
                            labelText: "largeur"
                        ),
                        controller: larg,
                        //onChanged: (v) => larg.text =v,
                      ),


                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Builder(
                          builder: (context) {
                            return RaisedButton(
                              onPressed: () {
                                nom.ajoutWagon(double.parse(haut.text),double.parse(larg.text),currentColor);
                                haut.clear();
                                larg.clear();

                              },
                              //print('$coul,$larg, $haut'),
                              color: Colors.indigoAccent,
                              child: Text('ajout de wagon'),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),),
    );
  }
}

Widget cont(double hauteur, double largeur,Color couleur){
  return Container(
    height: hauteur,
    width: largeur,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(33.0),
      color:couleur,
    ),
    margin: EdgeInsets.only(top:40.0,right: 5.0, left: 5.0),


    child: Text("wagon"),
  );
}