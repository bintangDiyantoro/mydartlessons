import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyAudioPlayer());

class MyAudioPlayer extends StatefulWidget {
  const MyAudioPlayer({super.key});

  @override
  State<MyAudioPlayer> createState() => _MyAudioPlayerState();
}

class _MyAudioPlayerState extends State<MyAudioPlayer> {
  String durasi = "00:00";
  final AudioPlayer beanAudio = AudioPlayer();
  _MyAudioPlayerState() {
    beanAudio.onPositionChanged.listen((duration) {
      setState(() {
        durasi = (duration.inSeconds < 10)
            ? "${duration.inMinutes}:0${duration.inSeconds}"
            : "${duration.inMinutes}:${duration.inSeconds}";
      });
    });
    beanAudio.setReleaseMode(ReleaseMode.loop);
  }

  void playAudio(String url) async {
    await beanAudio.play(UrlSource(url));
  }

  void pauseAudio() async {
    await beanAudio.pause();
  }

  void stopAudio() async {
    await beanAudio.stop();
  }

  void resumeAudio() async {
    await beanAudio.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bean Simple Audio Player"),
          elevation: 0,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {
                    playAudio(
                      "https://previews.cambridge-mt.com/DeadEnemies_Full_Preview.mp3",
                    );
                  },
                  color: Colors.amber[50],
                  child: const Text("Play"),
                ),
                MaterialButton(
                  onPressed: pauseAudio,
                  color: Colors.amber[50],
                  child: const Text("Pause"),
                ),
                MaterialButton(
                  onPressed: resumeAudio,
                  color: Colors.amber[50],
                  child: const Text("Resume"),
                ),
                MaterialButton(
                  onPressed: stopAudio,
                  color: Colors.amber[50],
                  child: const Text("Stop"),
                ),
                Text(durasi),
              ]),
        ),
      ),
    );
  }
}
