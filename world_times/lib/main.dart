import 'package:flutter/material.dart';
import 'package:world_times/pages/home.dart';
import 'package:world_times/pages/loading.dart';
import 'package:world_times/pages/chose_location.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/chose_location': (context) => ChoseLocation()
      },
    );
  }
}
