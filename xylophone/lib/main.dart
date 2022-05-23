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
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: SafeArea(
          child: Column(
            
            children: [TextButton(
              child: Text('Click Me',
                style: TextStyle(backgroundColor: Colors.purple),),
              onPressed: () {
                playSound(1);
              },
            ),
            TextButton(
              
              child: Text('Click Me',
                style: TextStyle(backgroundColor: Colors.yellow),),
              onPressed: () {
                playSound(2);
              },
            ),
            TextButton(
              child: Text('Click Me',
                style: TextStyle(backgroundColor: Colors.teal),),
              onPressed: () {
                playSound(3);
              }
            ),
            TextButton(
              child: Text('Click Me',
                style: TextStyle(backgroundColor: Colors.green),),
              onPressed: () {
                playSound(4);
              },
            ),
            TextButton(
              child: Text('Click Me',
                style: TextStyle(backgroundColor: Colors.red),),
              onPressed: () {
                playSound(5);
              },
            ),],
          ),
        ),
      ),
    );
  }
}