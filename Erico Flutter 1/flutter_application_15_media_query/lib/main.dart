import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> myWidgets = [];

    List widgetsData = [
      [Colors.red, 'Ferrari'],
      [Colors.amber, 'Chevrolet'],
      [Colors.green, 'Mitsubishi'],
      [Colors.grey, 'Honda'],
      [Colors.blue, 'Tesla'],
    ];

    double widthToDouble = MediaQuery.of(context).size.width.toDouble();
    double heightToDouble = MediaQuery.of(context).size.height.toDouble();

    double width = (MediaQuery.of(context).orientation == Orientation.portrait)
        ? widthToDouble
        : widthToDouble / widgetsData.length;

    double height = (MediaQuery.of(context).orientation == Orientation.portrait)
        ? heightToDouble / widgetsData.length
        : heightToDouble;

    for (var w in widgetsData) {
      myWidgets.add(MyContainer(w[0], w[1], width, height));
    }

    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   title: const Text("Media Query"),
      // ),
      body: homeFunc(MediaQuery.of(context).size.height.toInt(),
          MediaQuery.of(context).size.width.toInt(), myWidgets),
    );
  }
}

Widget homeFunc(int screenHeight, int screenWidth, List<Widget> widgets) {
  if (screenHeight > screenWidth) {
    return Column(
      children: widgets,
    );
  } else {
    return Row(
      children: widgets,
    );
  }
}

class MyContainer extends StatelessWidget {
  final Color color;
  final String text;
  final double width;
  final double height;
  const MyContainer(this.color, this.text, this.width, this.height, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
