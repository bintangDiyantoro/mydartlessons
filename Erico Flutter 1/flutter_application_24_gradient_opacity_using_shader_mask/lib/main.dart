import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Gradient Opacity using Shader Mask"),
        ),
        body: Center(
          child: ShaderMask(
            shaderCallback: (bounds) {
              return const LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(bounds);
            },
            blendMode: BlendMode.dstIn,
            child: const Image(
              width: 300,
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1564291366952-4d6231c2e414?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80"),
            ),
            // child: const Text(
            //   "A",
            //   style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
            // ),
          ),
        ),
      ),
    );
  }
}
