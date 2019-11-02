import 'package:flutter/material.dart';
import 'package:flutter_ap/styleguide.dart';
import '../widgets/character_widget.dart';

class CharacterListingScreen extends StatefulWidget {
  static const routeName="/td";
  @override
  _CharacterListingScreenState createState() => _CharacterListingScreenState();
}

class _CharacterListingScreenState extends State<CharacterListingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
          color: Colors.black,),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 32.0 ,top: 8.0,),
                child: RichText(
                    text: TextSpan(
                      children:[
                        TextSpan(text:  "Despicable Me ",style: AppTheme.display1, ),
                        TextSpan(text:  "\n ",),
                        TextSpan(text:  "Characters ",style: AppTheme.display2, ),
                      ]
                    ),
                ),
              ),
              Expanded(
                child: CharacterWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
