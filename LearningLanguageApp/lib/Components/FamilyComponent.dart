import 'package:audioplayers/audioplayers.dart';
import 'package:learning_language/Models/FamilyMember.dart';
import 'package:flutter/material.dart';

class FamilyComponent extends StatelessWidget {
  final FamilyMember fam;
  FamilyComponent({super.key, required this.fam});
  final player=AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff8da9c4),
      height: 100,
      child: Row(
        children: [
          Container(color: Colors.white70, child: Image.asset(fam.image)),
          Spacer(
            flex: 1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(fam.japMember), Text(fam.engMember)],
          ),
          Spacer(
            flex: 12,
          ),
          GestureDetector(
              onTap: (){

                player.play(AssetSource(fam.sound));
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
