import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MusicWidget());
}

class MusicWidget extends StatelessWidget {
  const MusicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
          title: const Text(
            "Naghamat",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource('assets/music-2.mp3'));
              },
              child: const Text("My Music"),
            )
          ],
        ),
      ),
    );
  }
}
