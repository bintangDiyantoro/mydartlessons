import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController myTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 215, 215, 215),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                obscureText: false,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  label: Text("Nama"),
                  prefixIcon: Icon(Icons.person),
                  hintText: "Nama Lengkap",
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixText: "Suffix",
                  counterText: "counter",
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.black),
                  // ),
                  // errorText: "error text",
                ),
                // autofocus: true,
                controller: myTextController,
                onChanged: (value) => setState(() {}),
              ),
            ),
            Text(
              myTextController.text,
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
