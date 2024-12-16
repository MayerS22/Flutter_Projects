import 'package:flutter/material.dart';

import '../Components/NumberComponent.dart';
import '../Data/Number_Data.dart';

class NumberPage extends StatelessWidget {
  NumberPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Numbers',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color(0xff134074),
        ),
        body: ListView.builder(
            itemCount: numbersList.length,
            itemBuilder: (context, index) {
              final number = numbersList[index];
              return NumberComponent(num: number);
            }));
  }
}
