import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String label;
  final Function handler;

  MyButton({this.label, this.handler});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: this.handler,
      // color: Colors.blue[900],
      child: Text(
        this.label,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
