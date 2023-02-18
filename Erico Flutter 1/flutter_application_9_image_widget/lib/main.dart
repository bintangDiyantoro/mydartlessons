import 'package:flutter/material.dart';

void main() => runApp(const AplikasiImageWidget());

class AplikasiImageWidget extends StatelessWidget {
  const AplikasiImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Belajar Image Widget"),
        ),
        body: Center(
          child: Container(
            color: Colors.black38,
            width: 300,
            height: 300,
            child: const Image(
              image: AssetImage("assets/img/east-stand.jpg"),
              fit: BoxFit.contain,
              // repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}
