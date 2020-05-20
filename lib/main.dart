import 'package:flutter/material.dart';
import 'package:lucifer/dice.dart';
import 'package:lucifer/music.dart';
import 'package:lucifer/quizzr.dart';

void main() => runApp(Lucifer());

class Lucifer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.deepOrange,

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("assets/images/biker.jpg"),
            ),
            Text("ANIKET KASTURI ",
              style: TextStyle(
                fontSize: 30,
                fontFamily: "Righteous-Regular",
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),
            ), //name
            Text('Flutter developer',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight:FontWeight.w400,
                color: Colors.white,
              ),
            ),//flutter developer
            SizedBox(
              height: 20.0,
              width: 120,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.arrow_forward_ios, color: Colors.black,),
                title: Text('Play Dice game',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
                onTap:() { Navigator.push(context, new MaterialPageRoute(builder: (context) =>Dice()));},
              ),
            ),   //-----> Dice game
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.star, color: Colors.black,),
                title: Text('Music',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
                onTap:() { Navigator.push(context, new MaterialPageRoute(builder: (context) =>Music()));},
              ),
            ), // ------> xylophone
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.question_answer, color: Colors.black,),
                title: Text('Quizzrr',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
                onTap:() { Navigator.push(context, new MaterialPageRoute(builder: (context) =>Quizzler()));},
              ),
            ),// ------> Quizzrr
          ],
        ),
      ),

    );

  }
}








