import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  return runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(String name) {
    final player = AudioCache();
    player.play(name);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade500,
        appBar: AppBar(
          title: Center(
            child: Text('Music Player'),
          ),
          backgroundColor: Colors.grey.shade900,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Row(
                  children: <Widget>[
                    FlatButton(
                      child: Image(
                          image: AssetImage('images/ed.png'),
                          width: 100,
                          height: 100),
                      onPressed: () {
                        playSound('Perfect.mp3');
                      },
                    ),
                    FlatButton(
                      child: Image(
                          image: AssetImage('images/come.png'),
                          width: 100,
                          height: 100),
                      onPressed: () {
                        playSound('comeout.mp3');
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Row(
                  children: <Widget>[
                    FlatButton(
                      child: Image(
                          image: AssetImage('images/lala.png'),
                          width: 100,
                          height: 100),
                      onPressed: () {
                        playSound('lalaland.mp3');
                      },
                    ),
                    FlatButton(
                      child: Image(
                          image: AssetImage('images/pho.png'),
                          width: 100,
                          height: 100),
                      onPressed: () {
                        playSound('phonecert.mp3');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
