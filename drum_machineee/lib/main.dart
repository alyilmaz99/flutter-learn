import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  final player = AudioCache();
  void sesiCal(String ses) {

    player.play('$ses.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumPad('bongo', Colors.brown),
                  ),
                  Expanded(
                    child: buildDrumPad('woo', Colors.brown),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumPad('clap3', Colors.red),
                  ),
                  Expanded(
                    child: buildDrumPad('how', Colors.blueGrey),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumPad('clap1', Colors.purple),
                  ),
                  Expanded(
                    child: buildDrumPad('ridebel', Colors.orange),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumPad('oobah', Colors.orangeAccent),
                  ),
                  Expanded(
                    child: buildDrumPad('crash', Colors.lightGreen),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumPad('oobah', Colors.blue),
                  ),
                  Expanded(
                    child: buildDrumPad('crash', Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  FlatButton buildDrumPad(String ses, Color renk) {
    return FlatButton(
                    padding: EdgeInsets.all(8),
                    onPressed: () {
                      sesiCal(ses);
                    },
                    child: Container(
                      color: renk,
                    ),
                  );
  }
}
