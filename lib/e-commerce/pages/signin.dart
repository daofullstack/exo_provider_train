import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  static const routeName="/sign";
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading:IconButton(
          icon: Icon(Icons.arrow_back_ios),
      color: Colors.white,
      onPressed: (){
        Navigator.pop(context);
      },),
        title: Text('Login'),
        centerTitle: true,
      ),

      body:Stack(
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      child: Stack(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.purple,
                            radius: 40,
                          ),

                          Positioned(
                            right: 2,
                            top: 6,
                            child: CircleAvatar(
                              radius: 33,
                              backgroundColor: Colors.indigo,
                              child: Icon(Icons.shopping_cart, color: Colors.white, size: 30,),
                            ),
                          )
                        ],
                      ),
                    ),

                    Text('Treva Shop', style: TextStyle(color:Colors.white,fontSize: 20, fontWeight: FontWeight.bold),)


                  ],

                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        height:70,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: "Nom",
                              icon: Icon(Icons.email)
                          ),
                        ),

                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        height:70,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: "Password",
                              icon: Icon(Icons.vpn_key)
                          ),
                        ),

                      ),
                      SizedBox(
                        height: 20,
                      ),

                      InkWell(
                        child: Container(
                          child: Text("Have Account? Sign in", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
                        ),
                      )


                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  child: Container(
                    width: double.infinity,
                    height: 50.0,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.deepPurple[900], Colors.purple],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0.0, 1.5),
                            blurRadius: 1.5,
                          ),
                        ]),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                          onTap: () => null,
                          child: Center(
                            child: Text("Sign Up", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          )),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),



    );
  }
}