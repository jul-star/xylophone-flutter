import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  int n = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Note(1, Colors.red, player),
              Note(2, Colors.yellow, player),
              Note(3, Colors.green, player),
              Note(4, Colors.lightBlue, player),
              Note(5, Colors.blue[900], player),
              Note(6, Colors.purple, player),
              Note(7, Colors.lime, player),
            ],
          ),
        ),
      ),
    );
  }
}

class Note extends StatelessWidget {
  Note(int i, Color c, AudioCache p)
      : num = i,
        color = c,
        player = p {}
  int num;
  Color color;
  AudioCache player;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: FlatButton(
        onPressed: () {
          player.play('note$num.wav');
        },
        color: color,
      ),
    );
  }
}
