import 'package:flutter/material.dart';
import 'package:learning_language/Components/FamilyComponent.dart';

import '../Data/FamilyMember_Data.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Family Member',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff134074),
      ),
      body: ListView.builder(
        itemCount: familyMemberList.length,
        itemBuilder: (context, index) {
          final family = familyMemberList[index];
          return FamilyComponent(fam: family);
        },
      ),
    );
  }
}
