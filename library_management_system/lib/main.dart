import 'package:flutter/material.dart';

import 'home_page.dart';


void main() {
  runApp(LibraryManagementSystem());
}

class LibraryManagementSystem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Library Management System',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}
