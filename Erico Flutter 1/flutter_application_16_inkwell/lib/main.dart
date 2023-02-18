import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            elevation: 3,
            child: Container(
              width: 150,
              height: 40,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 4, 49, 86),
                  Color.fromARGB(255, 81, 88, 5)
                ], begin: Alignment.centerLeft, end: Alignment.centerRight),
              ),
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  splashColor: Colors.amber,
                  
                  onTap: () => true, //must be doing something
                  child: const Center(
                    child: Text(
                      "Custom Button",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
