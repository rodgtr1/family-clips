import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';

void main() => runApp(MyApp());

void playClip(familyMemberName){
  int number = Random().nextInt(2)+1;
  final player = AudioCache();
  print('$familyMemberName$number.wav');
  player.play('$familyMemberName$number.wav');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('The McCallister Family'),
            ),
            body: SafeArea(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        child: Image.asset('assets/dad.png'),
                        onPressed: () {
                          playClip('dad');
                        },
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        child: Image.asset('assets/mom.png'),
                        onPressed: () {
                          playClip('mom');
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        child: Image.asset('assets/buzz.png'),
                        onPressed: () {
                          playClip('buzz');
                        },
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        child: Image.asset('assets/daughter.png'),
                        onPressed: () {
                          playClip('daughter');
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        child: Image.asset('assets/fuller.png'),
                        onPressed: () {
                          playClip('fuller');
                        },
                      ),
                    ),
                    Expanded(
                      child: FlatButton(
                        child: Image.asset('assets/kevin.png'),
                        onPressed: () {
                          playClip('kevin');
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ))));
  }
}
