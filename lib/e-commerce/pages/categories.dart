import 'package:flutter/material.dart';
import 'produits.dart' as prefix1;
import 'produits.dart';
import 'package:flutter_ap/models/ecommerce.dart' as prefix0;
import '../../models/ecommerce.dart';
import '../../services/ecommerce_service.dart';

class Categories extends StatefulWidget {
  static const routeName="/categories";
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  Future<List<Categories>> categorieData;


  @override
  void initState() {
    // TODO: implement initState
 //categorieData=CategoriesService.getAll().then((v) => v);

    //print(categorieData);
    //CursusService.getAll().then((v) => print(v[0].nom));
     super.initState();
  }
  @override
  Widget build(BuildContext context) {


    return FutureBuilder(
      future: CategoriesService.getAll(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          List<Categorie> categorie = snapshot.data;
          Navigation(String name) {
            Navigator.pushNamed(context, prefix1.Produits.routeName,arguments: prefix1.Produits(categorie: categorie.firstWhere((i)=>i.nom==name),));
          }
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: (){
                  Navigator.pop(context);
                },
                color: Colors.grey,),
              title: Text('CATEGORIES ', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),),
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
            body: Container(
              color: Colors.black38,
              width: double.infinity,
              height: double.infinity,
              child: ListView.builder(
                  itemCount: categorie.length,//produits.length
                  itemBuilder: (buildContext, index) => InkWell(

                    onTap: (){ print(categorie[index].produits[0]);
                      Navigation(categorie[index].nom);
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => prefix1.Produits(categorie: categorie[index],)),
                      // );
                    },
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          image: DecorationImage(
                              image:AssetImage("assets/images/ch.jpeg"), //AssetImage("assets/images/{produits[index].image}"),//
                              fit: BoxFit.cover
                          )
                      ),
                      child: Text(categorie[index].nom, style: TextStyle(color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold),),
                    ),
                  )
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.home,color: Colors.grey,), onPressed: (){}),
                  IconButton(icon: Icon(Icons.branding_watermark,color: Colors.blue), onPressed: (){}),
                  IconButton(icon: Icon(Icons.shopping_cart,color: Colors.grey), onPressed: (){}),
                  IconButton(icon: Icon(Icons.account_box,color: Colors.grey), onPressed: (){})
                ],
              ),
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );

  }
}
/*
 Navigator.pushNamed(context, "produit",)
 Navigator.push(context, MaterialPageRoute(builder: (context) => prefix1.Produits(categorie: categorie[index],)),
 */