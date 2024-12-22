import 'package:flutter/material.dart';
import 'package:tuneapp/Components/TuneWidget.dart';
import 'package:tuneapp/Data/TuneData.dart';

class TuneScreen extends StatelessWidget {
  TuneScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TuneApp',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff10451d),
      ),
      body: Column(
        children: tuneData.map((e)=>Expanded(child: TuneWidget(color: e.color, sound: e.sound))).toList(),
      ),
    );
  }


}
