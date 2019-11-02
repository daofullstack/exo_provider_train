import 'package:flutter/material.dart';
import 'package:flutter_ap/e-commerce/pages/categories.dart';
import 'pages/detail_produit.dart';
import 'pages/login_signup.dart';

class AccueilEcommerce extends StatefulWidget {
  static const routeName="/accueil_ecommerce";
  @override
  _AccueilEcommerceState createState() => _AccueilEcommerceState();
}

class _AccueilEcommerceState extends State<AccueilEcommerce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E-commerce Accueil"),
        elevation: 0,
        backgroundColor: Colors.black,
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
        color: Colors.yellow,
        height: MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width,
       child: Stack(
         children: <Widget>[
           Container(
             height: MediaQuery.of(context).size.height,
             width:MediaQuery.of(context).size.width,
             child: Image.asset("assets/images/im.jpg",fit: BoxFit.cover,),
           ),
           Container(
             color: Colors.black38,
           ),
           Positioned(
             child:  Center(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   OutlineButton(
                     onPressed: (){
                       Navigator.of(context).pushNamed(LoginSignin.routeName,);
                     },
                     borderSide: BorderSide(color: Colors.white,width: 2.0),
                     shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(40.0)),
                     child: Text("Login or signup",style: TextStyle(color: Colors.white, fontSize: 20),
                     ),
                   ),
                   OutlineButton(
                     onPressed: (){
                       Navigator.of(context).pushNamed(Categories.routeName,);
                     },
                     borderSide: BorderSide(color: Colors.white,width: 2.0),
                     shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(40.0)),
                     child: Text(" Categories ",style: TextStyle(color: Colors.white, fontSize: 20),
                     ),
                   ),
                 ],
               ),
             ) ,
           )
         ],
       )
      )

    );
  }
}
/*

Container(
        child:SingleChildScrollView(
          child:Center(
            child:Column(
            children: <Widget>[
              Divider(height: 700,),
              RaisedButton(
                color: Colors.blueGrey,
                child: Text("E-commerce"),
                onPressed: (){
                  Navigator.of(context).pushNamed(DetailProduit.routeName,);
                },

              ),
              Stack(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(30.0),
                        color: Colors.white,
                      ),
                      height: MediaQuery.of(context).size.height/6,
                      width:  MediaQuery.of(context).size.width-20,

                      child:ClipRRect(
                        borderRadius: new BorderRadius.circular(20.0),
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2019/10/07/13/39/cosmos-4532636_1280.jpg",fit: BoxFit.cover,
                        ),
                      )
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 50.0,),
                      child: Center(child: Text("NIKE SPORT", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),))),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(30.0),
                        color: Colors.white,
                      ),
                      height: MediaQuery.of(context).size.height/6,
                      width:  MediaQuery.of(context).size.width-20,

                      child:ClipRRect(
                        borderRadius: new BorderRadius.circular(20.0),
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2019/10/07/13/39/cosmos-4532636_1280.jpg",fit: BoxFit.cover,
                        ),
                      )
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 50.0,),
                      child: Center(child: Text("NIKE SPORT", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),))),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(30.0),
                        color: Colors.white,
                      ),
                      height: MediaQuery.of(context).size.height/6,
                      width:  MediaQuery.of(context).size.width-20,

                      child:ClipRRect(
                        borderRadius: new BorderRadius.circular(20.0),
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2019/10/07/13/39/cosmos-4532636_1280.jpg",fit: BoxFit.cover,
                        ),
                      )
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 50.0,),
                      child: Center(child: Text("NIKE SPORT", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),))),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(30.0),
                        color: Colors.white,
                      ),
                      height: MediaQuery.of(context).size.height/6,
                      width:  MediaQuery.of(context).size.width-20,

                      child:ClipRRect(
                        borderRadius: new BorderRadius.circular(20.0),
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2019/10/07/13/39/cosmos-4532636_1280.jpg",fit: BoxFit.cover,
                        ),
                      )
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 50.0,),
                      child: Center(child: Text("NIKE SPORT", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),))),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(30.0),
                        color: Colors.white,
                      ),
                      height: MediaQuery.of(context).size.height/6,
                      width:  MediaQuery.of(context).size.width-20,

                      child:ClipRRect(
                        borderRadius: new BorderRadius.circular(20.0),
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2019/10/07/13/39/cosmos-4532636_1280.jpg",fit: BoxFit.cover,
                        ),
                      )
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 50.0,),
                      child: Center(child: Text("NIKE SPORT", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),))),
                ],
              ),
              Stack(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(30.0),
                        color: Colors.white,
                      ),
                      height: MediaQuery.of(context).size.height/6,
                      width:  MediaQuery.of(context).size.width-20,

                      child:ClipRRect(
                        borderRadius: new BorderRadius.circular(20.0),
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2019/10/07/13/39/cosmos-4532636_1280.jpg",fit: BoxFit.cover,
                        ),
                      )
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 50.0,),
                      child: Center(child: Text("NIKE SPORT", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),))),
                ],
              )
            ],
            ),
          )
        ),
      ),
* */