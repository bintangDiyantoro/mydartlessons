import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoadingState();
  }
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: FlatButton.icon(
              onPressed: () => Navigator.pushNamed(context, '/chose_location'),
              icon: Icon(Icons.edit_location),
              label: Text('Chose Location'))),
    );
  }
}
