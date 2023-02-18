import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void test() {
    print("the button is pressed");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'netninjapp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('NinjApp'),
          backgroundColor: Colors.blue[900],
          centerTitle: true,
        ),
        body: Center(
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.face,
              size: 50,
            ),
          ),
          // child: RaisedButton.icon(
          //   label: Text(
          //     "Tekan aku mas",
          //     style: TextStyle(fontSize: 20),
          //   ),
          //   icon: Icon(
          //     Icons.face,
          //     size: 50,
          //   ),
          //   onPressed: () {},
          // ),
          // child: RaisedButton(
          //   // child: FlatButton(
          //   onPressed: () {},
          //   child: Text(
          //     "Tekan aku mas",
          //     style: TextStyle(fontSize: 20, color: Colors.white),
          //   ),
          //   color: Colors.green,
          // ),
          // child: Text(
          //   'Welcome',
          //   style: TextStyle(fontFamily: 'Acme', fontSize: 30),
          // ),
          // child: Image.asset('assets/P_20170319_135612.jpg'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.favorite,
            size: 40,
            color: Colors.yellow,
          ),
          backgroundColor: Colors.red[900],
          onPressed: () => {},
        ),
      ),
    );
  }
}
