import 'package:audioplayers/audioplayers.dart';
import 'package:learning_language/Models/Phrases.dart';
import 'package:flutter/material.dart';

class PhrasesComponent extends StatelessWidget {
  final Phrases phrases;
  PhrasesComponent({super.key, required this.phrases});
  final player=AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff8da9c4),
      height: 100,
      child: Row(
        children: [
          Spacer(
            flex: 1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(phrases.japPhrases), Text(phrases.engPhrases)],
          ),
          Spacer(
            flex: 12,
          ),
          GestureDetector(
              onTap: (){

                player.play(AssetSource(phrases.sound));
              },
              child: Icon(Icons.play_arrow)),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
