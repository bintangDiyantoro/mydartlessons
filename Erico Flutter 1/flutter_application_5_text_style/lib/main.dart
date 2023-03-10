import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'Hello World!',
            style: TextStyle(
              fontFamily: "Overlock-Bold",
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.overline,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
