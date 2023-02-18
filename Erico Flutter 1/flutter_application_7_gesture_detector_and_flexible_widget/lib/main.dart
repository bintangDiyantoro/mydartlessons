import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Gesture Detector & Flexible Widget"),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () => setState(() {}),
            child: AnimatedContainer(
              decoration: BoxDecoration(
                color: Color.fromARGB(
                  random.nextInt(256),
                  random.nextInt(256),
                  random.nextInt(256),
                  random.nextInt(256),
                ),
                borderRadius: BorderRadius.circular(
                  random.nextInt(100).toDouble(),
                ),
              ),
              duration: const Duration(milliseconds: 500),
              width: 50.0 + random.nextInt(101),
              height: 50.0 + random.nextInt(101),
            ),
          ),
        ),
      ),
    );
  }
}
