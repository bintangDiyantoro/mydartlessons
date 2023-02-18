import 'package:flutter/material.dart';

void main() => runApp(const TasbihDigital());

class TasbihDigital extends StatefulWidget {
  const TasbihDigital({super.key});

  @override
  State<TasbihDigital> createState() => _TasbihDigitalState();
}

class _TasbihDigitalState extends State<TasbihDigital> {
  int angka = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 24, 1),
        appBar: AppBar(
          title: const Text(
            "Tasbih Digital Gaul",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.green.shade500,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                onPressed: () => setState(() => angka = 0),
                color: const Color.fromARGB(255, 155, 26, 17),
                child: const Text(
                  "Reset",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              Text(
                angka.toString(),
                style: const TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 122, 254, 127)),
              ),
              MaterialButton(
                onPressed: () => setState(() => angka += 1),
                color: const Color.fromARGB(255, 40, 143, 44),
                minWidth: 350,
                height: 250,
                child: const Text(
                  "+",
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
