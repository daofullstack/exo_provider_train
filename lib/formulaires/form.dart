import 'package:flutter/material.dart';

class FormulaireInput extends StatefulWidget {
  static const routeName="/formulaire";

  @override
  _FormulaireInputState createState() => _FormulaireInputState();
}

class _FormulaireInputState extends State<FormulaireInput> {

  @override
  Widget build(BuildContext context) {
  var _userEmail= TextEditingController();
  var _userPass= TextEditingController();
  var _description = TextEditingController();
  var _titre = TextEditingController() ;
  return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
          color: Colors.black,),
        title: Text("formulaires"),
        actions: <Widget>[
          Icon(Icons.check),
          Icon(Icons.description,)
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[

            Expanded(flex: 5,
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.only(
                          topLeft:  const  Radius.circular(10.0),
                          topRight: const  Radius.circular(70.0)),

                    color: Colors.deepOrange,
                  ),

                  margin:EdgeInsets.all(5.0) ,
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      /*TextField(
                          textInputAction: TextInputAction.next,
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            // hintStyle:,
                            labelText: "search", icon: Icon(Icons.search),
                            hintText: 'rechercher',
                          )),*/
                      TextField(
                        controller: _titre,

                          textInputAction: TextInputAction.next,
                          autofocus: true,
                          keyboardType: TextInputType.multiline,
                          style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            // hintStyle:,
                            hintText: 'Entrez un titre',
                          )),
                      TextField(
                          controller: _description,
                          textInputAction: TextInputAction.next,
                          autofocus: true,
                          keyboardType: TextInputType.multiline,
                          maxLines: 10,
                          style: TextStyle(fontSize: 18,),
                          decoration: InputDecoration(
                            // hintStyle:,
                            //labelText: "description",
                            hintText: 'un peu de description',
                          )),
                      /*TextField(
                        controller: _userEmail,
                        textInputAction: TextInputAction.next,
                          autofocus: true,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                           // hintStyle:,
                            labelText: "email adresse",
                            hintText: 'Entrez votre email',
                          )),
                      TextField(
                          controller: _userPass,
                          keyboardType: TextInputType.text,
                          style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                              labelText: "password",
                            hintText: 'votre mot de passe',
                          )),*/
                    ],
                  )
              ),),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                      color: Colors.blueGrey,
                      child: Text("envoyer",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: (){},
                      elevation: 10.0,
                      shape:RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(30.0))),
                  RaisedButton(
                      color: Colors.blueGrey,
                      child: Text('clear',
                          style: TextStyle(
                              color: Colors.white
                          )),
                      onPressed: (){
                        _description.clear();
                        _titre.clear();
                      },
                      elevation: 10.0,
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
