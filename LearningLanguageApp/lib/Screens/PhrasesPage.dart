import 'package:flutter/material.dart';
import 'package:learning_language/Components/PhrasesComponent.dart';

import '../Data/Phrases_Data.dart';


class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Phrases',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff134074),
      ),
      body: ListView.builder(
        itemCount: PhrasesList.length,
        itemBuilder: (context, index) {
          final phrases = PhrasesList[index];
          return PhrasesComponent(phrases: phrases);
        },
      ),
    );
  }
}
