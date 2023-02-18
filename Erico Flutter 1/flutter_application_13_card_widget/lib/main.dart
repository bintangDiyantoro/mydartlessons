import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[900],
          body: Center(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                myCard(Icons.adb, "Serangga Android"),
                myCard(Icons.account_box, "Account Box")
              ],
            ),
          ),
        ),
      ),
    );

Card myCard(IconData iconData, String text) {
  return Card(
    margin: const EdgeInsets.all(10),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            iconData,
            color: const Color.fromARGB(255, 13, 71, 161),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: const TextStyle(
                color: Color.fromARGB(255, 13, 71, 161),
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    ),
  );
}
