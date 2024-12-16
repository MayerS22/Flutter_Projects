import 'package:flutter/material.dart';
import 'package:learning_language/Screens/ColorsPage.dart';
import 'package:learning_language/Screens/FamilyMembersPage.dart';
import 'package:learning_language/Screens/NumbersPage.dart';
import 'package:learning_language/Screens/PhrasesPage.dart';
import '../Components/Category.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language App',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black54,
      ),
      body: Column(
        children: [
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return NumberPage();
              }));
            },
            text:  'Numbers',
            color: Color(0xff9c9b9b),
          ),
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return const FamilyMembersPage();
              }));
            },
            text: 'Family Member',
            color:Color(0xffb1b0b0),
          ),
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return const ColorsPage();
              }));
            },
            text: 'Colors',
            color:Color(0xffbbbaba),
          ),
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return const PhrasesPage();
              }));
            },
            text: 'Phrases',
            color: Color(0xffd0cece),
          ),

        ],
      ),
    );
  }
}



// Color(0xffd0cece)