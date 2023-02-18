import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: MaterialButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
            minWidth: 100,
            height: 30,
            color: Colors.blue,
            child: const Text("Login"),
          ),
        ),
      ),
    );
  }
}
