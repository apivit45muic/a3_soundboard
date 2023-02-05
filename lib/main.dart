import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math; // For Random color
// source : https://stackoverflow.com/questions/51340588/flutter-how-can-i-make-a-random-color-generator-background

void main() => runApp(SoundBoard());

class SoundBoard extends StatelessWidget {
  const SoundBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white24,
        body: SafeArea(
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            children: [
              createSoundButton(1, "Directed by Robert B. Weide"),
              createSoundButton(2, "You're already dead"),
              createSoundButton(3, "Hello There"),
              createSoundButton(4, "Emotional Damage"),
              createSoundButton(5, "Oof"),
              createSoundButton(6, "Super Idol"),
              createSoundButton(7, "Yoda dead sound"),
              createSoundButton(8, "Prof.Dang scold you"),
              createSoundButton(9, "PHub community intro"),
              createSoundButton(10, "Bruh"),

            ],
          ),
        ),
      ),
    );
  }

  Widget createSoundButton(int memeNo, String name) {
    return Expanded(
      child: TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
            textStyle:
            const TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
          ),
          onPressed: () {
            final player = AudioPlayer();
            player.play(AssetSource('meme$memeNo.mp3'));
          },
          child: Text(name)),
    );
  }
}