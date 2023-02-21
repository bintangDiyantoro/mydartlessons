import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyBigButton(80),
        ),
      ),
    );
  }
}

class MyBigButton extends StatefulWidget {
  final double widthAndHigh;
  const MyBigButton(this.widthAndHigh, {super.key});

  @override
  State<MyBigButton> createState() => _MyBigButtonState();
}

class _MyBigButtonState extends State<MyBigButton> {
  late final double widthAndHigh = widget.widthAndHigh;
  final Color mainColor = Colors.black;
  final Color secondColor = Colors.blue;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (data) {
        setState(() {
          isPressed = !isPressed;
        });
      },
      onTapUp: (data) {
        setState(() {
          isPressed = !isPressed;
        });
      },
      onTapCancel: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
      child: Transform.scale(
        scale: (isPressed) ? 1.2 : 1,
        child: Transform.rotate(
          angle: pi / ((isPressed) ? 4 : 1),
          child: Material(
            borderRadius: BorderRadius.circular(10),
            elevation: (isPressed) ? 3 : 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                alignment: const Alignment(0, 0),
                children: [
                  MyBox(widthAndHigh, (isPressed) ? secondColor : mainColor),
                  Transform.translate(
                    offset: const Offset(71, 0),
                    child: Transform.rotate(
                      angle: pi / 4,
                      child: MyBox(widthAndHigh, Colors.grey),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-71, 0),
                    child: Transform.rotate(
                      angle: pi / 4,
                      child: MyBox(widthAndHigh, Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  final double widthAndHigh;
  final Color boxColor;
  const MyBox(this.widthAndHigh, this.boxColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthAndHigh,
      height: widthAndHigh,
      decoration: BoxDecoration(color: boxColor),
    );
  }
}
