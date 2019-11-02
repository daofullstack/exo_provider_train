import 'package:flutter/material.dart';
import 'package:flutter_ap/exo_train/wagon.dart';
import 'package:provider/provider.dart';
import 'exo_provider2/provider.dart';
import 'home.dart';
import 'package:flutter/services.dart';
import 'pages/character_listing_screen.dart';
import 'formulaires/form.dart';
import 'calculatrice/calculator.dart';
import 'cursus_nan/home_nan.dart';
import 'cursus_nan/pages/detail_cour.dart';
import 'e-commerce/home_ecommerce.dart';
import 'e-commerce/pages/detail_produit.dart';
import 'e-commerce/pages/signin.dart';
import 'e-commerce/pages/login_signup.dart';
import 'e-commerce/pages/signup.dart';
import 'e-commerce/pages/categories.dart';
import 'e-commerce/pages/produits.dart';
import 'api_exo/exo1.dart';
import 'services/cursus_service.dart';
import 'exo_provider/accueil.dart';
import 'exo_provider2/accueil.dart';
import 'drag_drop_provider/accueil.dart';
import 'exo_train/acceuil.dart';



void main(){
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());


}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
            value: listBar()
        ),
        ChangeNotifierProvider.value(
            value: LesWagons()
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'exo',
        initialRoute:'/',
        routes: {
          '/': (ctx) => Home(),
          CharacterListingScreen.routeName: (ctx) => CharacterListingScreen(),
          FormulaireInput.routeName: (ctx) => FormulaireInput(),
          Calculator.routeName: (ctx) => Calculator(),
          HomeNan.routeName: (ctx) => HomeNan(),
          DetailCour.routeName: (ctx) => DetailCour(),
          AccueilEcommerce.routeName:(ctx) => AccueilEcommerce(),
          DetailProduit.routeName:(ctx)=> DetailProduit(),
          Signin.routeName: (ctx) => Signin(),
          LoginSignin.routeName: (ctx) => LoginSignin(),
          Signup.routeName:(ctx)=> Signup(),
          Categories.routeName:(ctx)=> Categories(),
          Produits.routeName:(ctx)=>Produits(),
          ExoProvider.routeName:(ctx)=> ExoProvider(),
          ExoProvider2.routeName:(ctx)=> ExoProvider2(),
          AccueilDraggableProvider.routeName: (ctx)=> AccueilDraggableProvider(),
          AccueilTrain.routeName :(ctx)=> AccueilTrain(),

        },
        //theme: ThemeData.dark(),
        //home: Home(),
        //home: FormulaireInput(),
        //home: Calculator(),
        //home: CharacterListingScreen(),
      ),
    );
  }
}

