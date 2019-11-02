import 'package:flutter/material.dart';
import 'package:youtube_player/youtube_player.dart';



class DetailCour extends StatefulWidget {
  static const routeName="/detail_cour";
  @override
  _DetailCourState createState() => _DetailCourState();
}

class _DetailCourState extends State<DetailCour> {
  TextEditingController _idController = TextEditingController();
  String id = "7QUtEmBT_-w";
  String lien ="https://www.youtube.com/watch?v=1Ve-dLdHcZM";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("cour x"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: (){
              Navigator.pop(context);
            },
            color: Colors.black,),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              YoutubePlayer(
                context: context,
                source: id,
                quality: YoutubeQuality.HD,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _idController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "$lien"
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    id = _idController.text;
                  });
                },
                child: Text("Play"),
              ),
            ],
          ),
        ));
  }
}
