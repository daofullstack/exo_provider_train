import 'package:flutter/material.dart';
import 'package:flutter_ap/e-commerce/pages/signin.dart';
import 'package:flutter_ap/e-commerce/pages/signup.dart';
import 'detail_produit.dart';

class LoginSignin extends StatefulWidget {
  static const routeName="/login_signin";
  @override
  _LoginSigninState createState() => _LoginSigninState();
}

class _LoginSigninState extends State<LoginSignin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("login or signup"),
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
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text("Treva Shop", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Colors.white
                              ),),
                              Text("Get best product in treva shop",style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white
                              ),)
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width:MediaQuery.of(context).size.width/1.2 ,
                                height: MediaQuery.of(context).size.height/17,
                                margin: EdgeInsets.only(bottom: 15),
                                child: OutlineButton(
                                  onPressed: (){
                                    Navigator.of(context).pushNamed(Signup.routeName,);
                                  },
                                  borderSide: BorderSide(color: Colors.white,width: 2.0),
                                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(40.0)),
                                  child: Text("Signup",style: TextStyle(color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(height: 1,color: Colors.white,width: 70,),
                                  Text("OR SKIP",style: TextStyle(color: Colors.white70, fontSize: 16)),
                                  Container(height: 1,color: Colors.white,width: 70),
                                ],),
                              Container(
                                width:MediaQuery.of(context).size.width/1.2 ,
                                height: MediaQuery.of(context).size.height/17,
                                margin: EdgeInsets.only(top: 15),
                                child: OutlineButton(
                                  onPressed: (){
                                    Navigator.of(context).pushNamed(Signin.routeName,);
                                  },
                                  borderSide: BorderSide(color: Colors.white,width: 2.0),
                                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(40.0)),
                                  child: Text("Login",style: TextStyle(color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
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
