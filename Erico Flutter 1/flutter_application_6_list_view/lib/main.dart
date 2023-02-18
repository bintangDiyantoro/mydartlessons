import 'package:flutter/material.dart';

void main() => runApp(const AplikasiListView());

class AplikasiListView extends StatefulWidget {
  const AplikasiListView({super.key});

  @override
  State<AplikasiListView> createState() => _AplikasiListViewState();
}

class _AplikasiListViewState extends State<AplikasiListView> {
  int counter = 1;
  List<Widget> widgets = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("List View")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 700,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: widgets.length,
                itemBuilder: (BuildContext context, int id) {
                  return widgets[id];
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                      counter--;
                    });
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.redAccent),
                  ),
                  child: const Text(
                    "Hapus Data",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      widgets.add(Text(
                        "Data Ke-${counter.toString()}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ));
                      counter++;
                    });
                  },
                  style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.fromLTRB(50, 0, 50, 0)),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 94, 175, 69)),
                  ),
                  child: const Text(
                    "Tambah Data",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
