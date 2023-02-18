import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return const MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: LoginPage(),
        backgroundColor: Color.fromARGB(255, 177, 255, 180),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;

  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -getSmallDiameter(context) / 2,
          right: -getSmallDiameter(context) / 3,
          child: Container(
            width: getSmallDiameter(context),
            height: getSmallDiameter(context),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 29, 154, 33),
                  Color.fromARGB(255, 55, 205, 60),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
        ),
        Positioned(
          top: -getSmallDiameter(context) / 2,
          left: -getSmallDiameter(context) / 3,
          child: Container(
            width: getBigDiameter(context),
            height: getBigDiameter(context),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 29, 154, 33),
                  Color.fromARGB(255, 55, 205, 60),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 90, left: 50),
                child: Text(
                  "Beanwatch",
                  style: TextStyle(
                      fontSize: 36,
                      fontFamily: "Allessa",
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -getSmallDiameter(context) / 1.5,
          right: -getSmallDiameter(context) / 3,
          child: Opacity(
            opacity: 0.4,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 29, 154, 33),
                    Color.fromARGB(255, 55, 205, 60),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 90, left: 30),
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 300, 30, 100),
            child: Column(
              children: [
                Container(
                  // height: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: const Color.fromARGB(255, 98, 173, 100)),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: Column(
                      children: const [
                        TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.email),
                            iconColor: Color.fromARGB(255, 129, 174, 130),
                            labelText: "Email: ",
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 129, 174, 130),
                            ),
                          ),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            icon: Icon(Icons.key),
                            iconColor: Color.fromARGB(255, 129, 174, 130),
                            labelText: "Password: ",
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 129, 174, 130),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 30),
                    child: const Text(
                      "Lupa Password?",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150,
                        height: 40,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 29, 154, 33),
                              Color.fromARGB(255, 55, 205, 60),
                            ],
                          ),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => true,
                            child: const Center(
                              child: Text(
                                "SIGN IN",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const FloatingActionButton(
                            elevation: 0,
                            mini: true,
                            onPressed: null,
                            child: Image(
                              image: AssetImage("assets/facebook.png"),
                            ),
                          ),
                          FloatingActionButton(
                            elevation: 0,
                            splashColor: Colors.green,
                            shape: const CircleBorder(),
                            mini: true,
                            onPressed: () => true,
                            child: Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage("assets/twitter.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Tidak punya akun?",
                        style: TextStyle(color: Colors.grey)),
                    MaterialButton(
                      onPressed: () => true,
                      elevation: 0,
                      minWidth: 0,
                      height: 0,
                      padding: const EdgeInsets.all(0),
                      color: Colors.transparent,
                      child: const Text(
                        "Daftar",
                        style: TextStyle(color: Colors.green),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
