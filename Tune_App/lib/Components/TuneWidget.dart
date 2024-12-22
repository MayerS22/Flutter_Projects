import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneWidget extends StatelessWidget {
  final Color color;
  final String sound;
  TuneWidget({super.key,required this.color,required this.sound});
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () async {
        await player.play(AssetSource(sound)); // Play sound on tap
        },

        child: Container(
          color: color,
          height: 120,
        ),
    );
  }
}
