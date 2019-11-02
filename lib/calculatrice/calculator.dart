import 'package:flutter/material.dart';
import './display.dart';
import './key-controller.dart';
import './key-pad.dart';
import './processor.dart';

class Calculator extends StatefulWidget {
  static const routeName="/calculatrice";

  Calculator({ Key key }) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  String _output;

  @override
  void initState() {

    KeyController.listen((event) => Processor.process(event));
    Processor.listen((data) => setState(() { _output = data; }));
    Processor.refresh();
    super.initState();
  }

  @override
  void dispose() {

    KeyController.dispose();
    Processor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    Size screen = MediaQuery.of(context).size;

    double buttonSize = screen.width / 4;
    double displayHeight = screen.height - (buttonSize * 5) - (buttonSize);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
          onPressed: (){
            Navigator.pop(context);
          },
          color: Colors.black,),
        title: Text("Calculatrice"),
      ),

      body: SingleChildScrollView(
        child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Display(value: _output, height: displayHeight),
              KeyPad()
            ]
        ),
      ),
    );
  }
}