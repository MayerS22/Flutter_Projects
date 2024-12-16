import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.color,this.text,this.onTap});
  String? text;
  Color ? color;
  Function ()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left:8),
          height: 60,
          width: double.infinity,
          color: color!,
      
          child: Text(
            text!,
            style: TextStyle(fontSize: 20),
      
          )),
    );
  }
}