import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$soundNumber.wav'),
    );
  }

  Expanded buildKey({required MaterialColor color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: TextButton.styleFrom(
            backgroundColor: color, enableFeedback: false // Background Color
            ),
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.green, soundNumber: 3),
              buildKey(color: Colors.cyan, soundNumber: 4),
              buildKey(color: Colors.yellow, soundNumber: 5),
              buildKey(color: Colors.purple, soundNumber: 6),
              buildKey(color: Colors.pink, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
