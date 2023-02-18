import 'package:flutter/material.dart';
import 'package:flutter_application_11_routes/pages/home.dart';
import 'package:flutter_application_11_routes/pages/login.dart';
import 'package:flutter_application_11_routes/pages/second_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/second_page': (context) => const SecondPage(),
      },
    );
  }
}
