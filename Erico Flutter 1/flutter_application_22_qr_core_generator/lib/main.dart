import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: QrImage(
            backgroundColor: Colors.lightGreen,
            data: "waduh, harus ru'yatul hilal itu mas",
            padding: const EdgeInsets.all(10),
            size: 300,
            errorCorrectionLevel: QrErrorCorrectLevel.M,
          ),
        ),
      ),
    );
  }
}
