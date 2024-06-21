import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MusicWidget());
}

class MusicWidget extends StatelessWidget {
  const MusicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    void playMusic(int musicNumber) async {
      final player = AudioPlayer();
      await player.play(AssetSource('music-$musicNumber.mp3'));
    }

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
                playMusic(1);
              },
              child: const Text(
                "Huawei",
                style: TextStyle(fontSize: 20.0, color: Colors.blue),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                playMusic(2);
              },
              child: const Text(
                "Samsung S7",
                style: TextStyle(fontSize: 20.0, color: Colors.blue),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                playMusic(3);
              },
              child: const Text(
                "Samsung Note",
                style: TextStyle(fontSize: 20.0, color: Colors.red),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                playMusic(4);
              },
              child: const Text(
                "Samsung Galaxy",
                style: TextStyle(fontSize: 20.0, color: Colors.blue),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                playMusic(5);
              },
              child: const Text(
                "Nokia",
                style: TextStyle(fontSize: 20.0, color: Colors.blue),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                playMusic(6);
              },
              child: const Text(
                "Whatsapp",
                style: TextStyle(fontSize: 20.0, color: Colors.blue),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                playMusic(7);
              },
              child: const Text(
                "Iphone 6",
                style: TextStyle(fontSize: 20.0, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
