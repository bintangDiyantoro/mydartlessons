import 'package:flutter/material.dart';
import 'box.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Row and Column"),
          backgroundColor: Colors.green.shade800,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyBox(
                          Colors.green.shade600, Colors.green.shade300, "Col 1")
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyBox(
                          Colors.green.shade500, Colors.green.shade200, "Col 2")
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyBox(
                          Colors.green.shade400, Colors.green.shade100, "Col 3")
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyBox(
                          Colors.green.shade900, Colors.green.shade600, "Col 4")
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyBox(
                          Colors.green.shade800, Colors.green.shade500, "Col 5")
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyBox(
                          Colors.green.shade700, Colors.green.shade100, "Col 6")
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
