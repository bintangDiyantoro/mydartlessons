import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Second Page"),
            elevation: 0,
          ),
          body: Center(
            child: MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              minWidth: 100,
              height: 30,
              color: Colors.grey,
              child: const Text("kembali to halaman main"),
            ),
          )),
    );
  }
}
