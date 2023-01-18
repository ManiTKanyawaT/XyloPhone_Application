import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int playsounds) {
    AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
    audioPlayer.open(Audio('assets/songs/note$playsounds.wav'));
  }

  TextButton buildPlayButton({
    required int soundNumber,
    required Color color,
    required String text,
    required double width,
    required double height,
  }) {
    return TextButton(
      onPressed: () {
        playSound(soundNumber);
      },
      style: TextButton.styleFrom(
        backgroundColor: color,
        fixedSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: const Text(
            'XYPHONE',
            style: TextStyle(fontSize: 20),
          ),
          backgroundColor: Colors.grey[900],
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildPlayButton(
                    soundNumber: 1,
                    text: 'C',
                    color: Colors.blueAccent,
                    width: 400,
                    height: 80),
                buildPlayButton(
                    soundNumber: 2,
                    text: 'D',
                    color: Colors.orangeAccent,
                    width: 350,
                    height: 80),
                buildPlayButton(
                    soundNumber: 3,
                    text: 'E',
                    color: const Color.fromARGB(255, 231, 231, 12),
                    width: 300,
                    height: 80),
                buildPlayButton(
                    soundNumber: 4,
                    text: 'F',
                    color: Colors.greenAccent,
                    width: 250,
                    height: 80),
                buildPlayButton(
                    soundNumber: 5,
                    text: 'G',
                    color: Colors.pinkAccent,
                    width: 200,
                    height: 80),
                buildPlayButton(
                    soundNumber: 6,
                    text: 'A',
                    color: Colors.redAccent,
                    width: 150,
                    height: 80),
                buildPlayButton(
                    soundNumber: 7,
                    text: 'B',
                    color: Colors.purpleAccent,
                    width: 100,
                    height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
