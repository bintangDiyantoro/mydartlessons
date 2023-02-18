import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class ChoseLocation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ChoseLocationState();
  }
}

class _ChoseLocationState extends State<ChoseLocation> {
  int counter = 0;

  void getJson() async {
    Response response =
        await get('https://worldtimeapi.org/api/timezone/Asia/Jakarta');
    Map data = jsonDecode(response.body);
    DateTime datetime = DateTime.parse(data["datetime"]);
    String offset = data["utc_offset"].substring(1,3);
    DateTime now = datetime.add(Duration(hours: int.parse(offset)));
    print(now);
  }

  Future getData() async {
    String name = await Future.delayed(Duration(seconds: 3), () => 'Bean');
    String bio =
        await Future.delayed(Duration(seconds: 3), () => '27 YO - Programmer');
    print('name : $name\nbio : $bio');
  }

  void test() async {
    await getData();
    getJson();
  }

  @override
  void initState() {
    super.initState();
    test();
    print('init state ran');
  }

  @override
  Widget build(BuildContext context) {
    print('build state ran');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        elevation: 0,
        centerTitle: true,
        title: Text('Chose Location'),
      ),
      body: RaisedButton(
        onPressed: () => setState(() => counter += 1),
        child: Text('You have pressed this button $counter times'),
      ),
    );
  }
}
