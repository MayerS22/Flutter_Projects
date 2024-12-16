import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../Models/Numbers.dart';

class NumberComponent extends StatelessWidget {
  final Numbers num;
  NumberComponent({super.key, required this.num});
  final player=AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff8da9c4),
      height: 100,
      child: Row(
        children: [
          Container(color: Colors.white70, child: Image.asset(num.image)),
          Spacer(
            flex: 1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(num.japNumber), Text(num.engNumber)],
          ),
          Spacer(
            flex: 12,
          ),
          GestureDetector(
              onTap: (){

                player.play(AssetSource(num.sound));
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
