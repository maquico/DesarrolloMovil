import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(Player());

class Player extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildTextButton("note1.wav", Colors.yellow, "1"),
              buildTextButton("note2.wav", Colors.green, "2"),
              buildTextButton("note3.wav", Colors.blue, "3"),
              buildTextButton("note4.wav", Colors.orange, "4"),
              buildTextButton("note5.wav", Colors.red, "5"),
              buildTextButton("spiderman2099.mp3", Colors.purple, "6"),
              buildTextButton("note7.wav", Colors.pinkAccent, "7"),
            ]
          )
        ),
      ),
    );
  }

  void PlayFile(String file){
    // Se interpola con $variable
    final player = AudioPlayer();
    player.stop();
    player.play(AssetSource(file));
  }

  Expanded buildTextButton(String audio, Color color, String texto) {
    return Expanded(
      child: TextButton(
                onPressed: (){
                  PlayFile(audio);
                },
                child: Text(texto),
                style: TextButton.styleFrom(
                  backgroundColor: color,
                  foregroundColor: Colors.black,
                ),
              ),
    );
  }
}
