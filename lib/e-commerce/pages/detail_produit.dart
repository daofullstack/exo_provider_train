import 'package:flutter/material.dart';



class DetailProduit extends StatefulWidget {
  static const routeName="/detail_produit";
  @override
  _DetailProduitState createState() => _DetailProduitState();
}

class _DetailProduitState extends State<DetailProduit> {
  String url= "assets/images/ch.jpeg";
  @override
  Widget cursusList (String img){
    return InkWell(
      child: Card(
          margin: const EdgeInsets.only(top:5.0),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:Container(
              height: MediaQuery.of(context).size.height/4,
              width: MediaQuery.of(context).size.width/2.7,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Image.asset(img,fit: BoxFit.cover,height:MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Nike sport Shores .."),
                        Text("\$ 100",style: TextStyle(fontWeight: FontWeight.bold),),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text("4.5"),
                            Icon(Icons.star,color: Colors.yellow,),
                            Text("200 sale "),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CHART",style: TextStyle(color: Colors.blueGrey),),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
          color: Colors.grey,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height/2.5,
                width: MediaQuery.of(context).size.width-6,
                child:Card(
                  elevation: 5.5,
                  color: Colors.white,
                  margin: EdgeInsets.only(right: 10.0, left: 10.0, bottom: 10.0,top: 1.0),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                          flex: 3,
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width/2,
                                child: Image.asset("assets/images/im.jpg"),
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Samsung Galaxy Note 9 8GB ...", style: TextStyle(
                                        color: Colors.black,fontWeight: FontWeight.bold
                                    ),),
                                    Text("Internal 1 TB", style: TextStyle(
                                      color: Colors.black,
                                    ),),
                                    Text("Samsung Galaxy Note 9 8GB ...", style: TextStyle(
                                      color: Colors.black,
                                    ),),
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.add),
                                        Icon(Icons.add),
                                        Icon(Icons.add),
                                      ],
                                    )

                                  ],
                                ),
                              ),
                            ],
                          )
                      ),
                      Divider(color: Colors.grey,),
                      Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text("TOTAL : \$ 950", style: TextStyle(
                                  color: Colors.black,fontWeight: FontWeight.bold
                              ),),
                              RaisedButton(
                                color: Colors.lightBlue,
                                child: Text("Pay"),
                                onPressed: (){
                                  Navigator.of(context).pushNamed(DetailProduit.routeName,);
                                },

                              ),

                            ],
                          )
                      ),
                    ],
                  ),
                )
            ),
            Divider(height: 700,),
            Wrap(
              spacing: 7,
              runSpacing: 5,
              children: <Widget>[
                for (int i =0; i< 10;i++)
                  cursusList(url)
              ],
            ),


            Container(
              decoration: new BoxDecoration(
                shape: BoxShape.rectangle,
                border: new Border.all(
                  color: Colors.white70,
                  width: 1.0,
                ),
              ),
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(10.0),
              height: 60,
              width: MediaQuery.of(context).size.width-6,
              child:TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Color(00000000)),
                  ),
                  focusedBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Color(00000000)),
                  ) ,
                  icon: Icon(Icons.email),
                  labelText: "Email",

                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(10.0),
              color: Colors.white70,
              height: 60,
              width: MediaQuery.of(context).size.width-6,
              child:TextField(

                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(Icons.vpn_key),
                  labelText: "Password",
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
