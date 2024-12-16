import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import '../Models/Colors.dart';


class ColorComponent extends StatelessWidget {
   final Col color;
  ColorComponent({super.key, required this.color});
  final player=AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff8da9c4),
      height: 100,
      child: Row(
        children: [
          Container(color: Colors.white70, child: Image.asset(color.image)),
          Spacer(
            flex: 1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(color.japColor), Text(color.engColor)],
          ),
          Spacer(
            flex: 12,
          ),
          GestureDetector(
              onTap: (){

                player.play(AssetSource(color.sound));
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
