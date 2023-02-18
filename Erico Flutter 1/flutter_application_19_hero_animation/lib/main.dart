import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => const Home(),
        '/page2': (context) => const Page2(),
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero Animation"),
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () => Navigator.pushNamed(context, "/page2"),
        child: Hero(
          tag: 'patrick',
          child: Container(
            width: 100,
            height: 100,
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/Patrick star aesthetic.jpeg"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero Animation"),
        elevation: 0,
      ),
      body: Center(
        child: Hero(
          tag: "patrick",
          child: Container(
            width: 300,
            height: 300,
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Patrick star aesthetic.jpeg"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
