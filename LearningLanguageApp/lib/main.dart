import 'package:flutter/material.dart';
import 'Screens/HomePage.dart';

void main() {
  runApp(LearningApp());
}

class LearningApp extends StatelessWidget {
  const LearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage()
    );
  }
}



