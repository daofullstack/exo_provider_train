import 'package:flutter/material.dart';
import './e-commerce/pages/signin.dart';
import './exo_provider2/accueil.dart';
import 'formulaires/form.dart';
import 'pages/character_listing_screen.dart';
import 'calculatrice/calculator.dart';
import 'cursus_nan/home_nan.dart';
import 'e-commerce/home_ecommerce.dart';
import 'exo_provider/accueil.dart';
import 'drag_drop_provider/accueil.dart';
import 'exo_train/acceuil.dart';

class Home extends StatefulWidget {
  static const routeName="/";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  color: Colors.blueGrey,
                  child: Text("train wagon"),
                  onPressed: (){
                    Navigator.of(context).pushNamed(AccueilTrain.routeName,);
                  },

                ),
                RaisedButton(
                  color: Colors.blueGrey,
                  child: Text("draggable provider"),
                  onPressed: (){
                    Navigator.of(context).pushNamed(AccueilDraggableProvider.routeName,);
                  },

                ),
                RaisedButton(
                  color: Colors.blueGrey,
                  child: Text("exo provider"),
                  onPressed: (){
                    Navigator.of(context).pushNamed(ExoProvider.routeName,);
                  },

                ),
                RaisedButton(
                  color: Colors.blueGrey,
                  child: Text("exo provider 2"),
                  onPressed: (){
                    Navigator.of(context).pushNamed(ExoProvider2.routeName,);
                  },

                ),
                RaisedButton(
                  color: Colors.blueGrey,
                  child: Text("signin"),
                  onPressed: (){
                    Navigator.of(context).pushNamed(Signin.routeName,);
                  },

                ),
                RaisedButton(
                  color: Colors.blueGrey,
                  child: Text("E-commerce"),
                  onPressed: (){
                    Navigator.of(context).pushNamed(AccueilEcommerce.routeName,);
                  },

                ),
                RaisedButton(
                  color: Colors.blueGrey,
                  child: Text("NaN school"),
                  onPressed:  (){
                    Navigator.of(context).pushNamed(HomeNan.routeName,);
                  },
                ),
                RaisedButton(
                  color: Colors.blueGrey,
                  child: Text("Calculatrice"),
                  onPressed:  (){
                    Navigator.of(context).pushNamed(Calculator.routeName,);
                  },
                    /*  (){
                    Navigator.push(context, PageRouteBuilder(
                    transitionDuration:  const Duration(milliseconds: 350),
                    pageBuilder: (context, _, __) =>Calculator(),
                    ));
                  }*/
                ),
                RaisedButton(
                    color: Colors.blueGrey,
                  child: Text("TD vendredi"),
                    onPressed:(){
                     Navigator.of(context).pushNamed(CharacterListingScreen.routeName,);
                  },
                ),
                RaisedButton(
                    color: Colors.blueGrey,
                  child: Text("formulaire"),
                    onPressed: (){
                        Navigator.of(context).pushNamed(FormulaireInput.routeName,);
                 },

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
