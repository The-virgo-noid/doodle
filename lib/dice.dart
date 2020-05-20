import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDiceNumber =1;
  int rightDiceNumber =1;

  void changeDiceFace(){
    setState(() {
      rightDiceNumber = Random().nextInt(6)+1;
      leftDiceNumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade300,
      appBar: AppBar(
        title: Text('Dice game',style: TextStyle( fontFamily: "Righteous-Regular", fontSize: 20.0),),
        backgroundColor: Colors.deepOrange,
      ),


      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: (){changeDiceFace();},
                child: Image.asset("assets/diceimages/dice$leftDiceNumber.png"),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){changeDiceFace();},
                child: Image.asset("assets/diceimages/dice$rightDiceNumber.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



