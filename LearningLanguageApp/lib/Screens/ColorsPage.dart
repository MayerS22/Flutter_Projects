import 'package:flutter/material.dart';
import 'package:learning_language/Components/ColorComponent.dart';

import '../Data/Colors_Data.dart';


class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Colors',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff134074),
      ),
      body: ListView.builder(
        itemCount: colorList.length,
        itemBuilder: (context, index) {
          final col = colorList[index];
          return ColorComponent(color: col);
        },
      ),
    );
  }
}
