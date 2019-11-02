import 'package:flutter/material.dart';
import '../../models/ecommerce.dart';
import '../../services/ecommerce_service.dart';
import 'detail_produit.dart';


class Produits extends StatefulWidget {
  static const routeName="/produits";
  var categorie;
  Produits({Key key, this.categorie}) : super(key: key);
  @override
  _ProduitsState createState() => _ProduitsState();
}

class _ProduitsState extends State<Produits> {

  @override
  Widget build(BuildContext context) {
    //print(widget.categorie);
    //var args=ModalRoute.of(context).settings.arguments as CategoriesService;
    NavigationDetail(String name) {
      Navigator.pushNamed(context, DetailProduit.routeName,);
    }
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
          color: Colors.grey,),
        title: Text("widget.categorie", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.search, color: Colors.black54,),
          )
        ],
      ),
      body:Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child:Column(
              children: <Widget>[
                Expanded(flex: 1,
                child:  Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.arrow_drop_down, size: 30.0,),
                              SizedBox(width: 5.0,),
                              Text('Sort', style: TextStyle(color: Colors.black),)
                            ],
                          ),
                        )
                    ),
                    VerticalDivider(color: Colors.black, width: 0.0,),
                    Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.arrow_drop_down, size: 30.0,),
                              SizedBox(width: 5.0,),
                              Text('Refine', style: TextStyle(color: Colors.black),)
                            ],
                          ),
                        )
                    ),
                  ],
                ),),
                Expanded(
                  flex: 9,
                  child: Container(
                    child:SingleChildScrollView(
                        child:Center(
                          child:Column(
                            children: <Widget>[

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
                                        child: Image.asset("assets/images/im.jpg",fit: BoxFit.cover,
                                        ),
                                      )
                                  ),
                                  Padding(padding: EdgeInsets.symmetric(vertical: 50.0,),
                                      child: Center(child: Text("widget.categorie.nom", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),))),
                                ],
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                )
              ],
            )
          ),
        ),
      ),
    );

  }
}
