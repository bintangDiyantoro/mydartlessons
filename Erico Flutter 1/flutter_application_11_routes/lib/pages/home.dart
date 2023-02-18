import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Halaman Utama"),
          elevation: 0,
        ),
        body: Center(
          child: MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second_page');
            },
            minWidth: 100,
            height: 30,
            color: Colors.blue,
            child: const Text("Ke Halaman 2"),
          ),
        ),
      ),
    );
  }
}
