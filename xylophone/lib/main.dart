import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}


class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void playSound(note) {
      final player = AudioCache();
      player.play('note$note.wav');
    }
    Color color = Colors.red;
    Expanded buildKey({color, var num}) {
    return Expanded(
      child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(color),),
            child: Text('Click Me'),
            onPressed: () {
              playSound(num);
            },
          ),
      
    );
  }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: SafeArea(
          child: Column(
            children: [
              buildKey(color: Colors.black45, num:1),
              buildKey(color: Colors.redAccent, num:2),
              buildKey(color: Colors.green, num:3),
              buildKey(color: Colors.purple, num:4),
              buildKey(color: Colors.blue, num:5)
              ],
          ),
        ),
      ),
    );
  }
}