import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  MyText({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,
        ),
      ),
      margin: EdgeInsets.all(10),
    );
  }
}
