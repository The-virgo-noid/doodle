import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart.';

class Music extends StatelessWidget {
  void playsound(int soundNumber){
    final player = AudioCache();
    player.play('music/music$soundNumber.mp3');

  }

  Expanded flatbutton({Color color, int soundNumber, String name}){
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed:(){
            playsound(soundNumber);
          },
          child: Text(name, style: TextStyle(fontSize: 25,fontFamily: "Righteous-Regular"),)
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MUSIC ", style: TextStyle(fontFamily: "Righteous-Regular", fontSize: 20.0),),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
              flatbutton(color: Colors.deepPurple, soundNumber: 1, name: "AWM"),
              flatbutton(color: Colors.indigo, soundNumber: 2,name:'LETS GO '),
              flatbutton(color: Colors.blue, soundNumber: 3,name:'PUBG FLUTE' ),
              flatbutton(color: Colors.green, soundNumber: 4,name: 'PUBG GUITAR'),
              flatbutton(color: Colors.yellow, soundNumber: 5,name: 'PUBG CINEMTATO'),
              flatbutton(color: Colors.red, soundNumber: 6,name: 'SARA WHISTLE'),
              flatbutton(color: Colors.white12, soundNumber: 7,name: 'SEASON 4 THEME'),

              ],
        ),
      ),
    );
  }
}
