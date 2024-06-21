import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MusicWidget());
}

class MusicWidget extends StatelessWidget {
  const MusicWidget({super.key});

  void playMusic(int musicNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('music-$musicNumber.mp3'));
  }

  Expanded myButton(int i, String name, Color color) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: ElevatedButton(
          onPressed: () {
            playMusic(i);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Icon(
                  Icons.music_note,
                  color: color,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text(
                  name,
                  style: TextStyle(fontSize: 20.0, color: color),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: const Text(
            "Naghamat",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(1, "Huawei", Colors.red),
            myButton(2, "Samsung Galaxy", Colors.green),
            myButton(3, "Nokia", Colors.black),
            myButton(4, "Sumsung S7", Colors.yellow),
            myButton(5, "Iphone 11", Colors.blue),
            myButton(6, "Samsung Note", Colors.purpleAccent),
            myButton(7, "Iphone 6", Colors.black),
          ],
        ),
      ),
    );
  }
}
