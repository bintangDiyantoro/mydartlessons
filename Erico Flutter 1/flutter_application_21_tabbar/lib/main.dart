import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      labelColor: const Color.fromARGB(255, 7, 48, 82),
      unselectedLabelColor: Colors.white,
      // indicatorPadding: const EdgeInsets.only(bottom: 20),
      indicator: const BoxDecoration(
        // border: Border(
        //   top: BorderSide(color: Colors.blue, width: 10),
        // ),
        gradient: LinearGradient(
            colors: [Colors.blue, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      tabs: [
        const Tab(
          icon: Icon(Icons.account_circle),
          text: "Orang",
        ),
        const Tab(
          text: "Page 2",
        ),
        Tab(
          child: Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/Patrick star aesthetic.jpeg"),
                )),
          ),
        ),
        const Tab(
          icon: Icon(Icons.work),
        )
      ],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const Text("TabBar"),
            centerTitle: false,
            titleSpacing: 10,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 21, 97, 159),
                ),
                child: myTabBar,
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text(
                  "Page 1",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              Center(
                child: Text(
                  "Page 2",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              Center(
                child: Text(
                  "Page 3",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              Center(
                child: Text(
                  "Page 4",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
