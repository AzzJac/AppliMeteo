import 'package:flutter/material.dart';
import 'dart:math';
import 'package:weather_app/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

int value = 0;
String randomDegree() {
  for (var i = 0; i < 15; i++) {
    value = Random().nextInt(26) + 10;
  }
  return "$value°C";
}

String emojiPrinter(int value) {
  // ☀️ 🌧️ 🌩️ ☁️ ⛅ 🌦️
  String meteo = "";
  if (value >= 10 && value <= 15) {
    meteo = "🌩️";
  } else if (value >= 16 && value <= 18) {
    meteo = "🌧️";
  } else if (value >= 19 && value <= 20) {
    meteo = "🌦️";
  } else if (value >= 21 && value <= 25) {
    meteo = "☁️";
  } else if (value >= 26 && value <= 30) {
    meteo = "⛅";
  } else if (value >= 31 && value <= 36) {
    meteo = "☀️";
  }
  return meteo;
}

String heureCount(int entry) {
  String hourToShow;
  hourToShow = entry.toString();
  return "$hourToShow h";
}

//String degreeEntry = "";

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
            ),
            const Column(
              children: [
                Text(
                  "Lyon",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                Text(
                  "28°C",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                Text(
                  "Ensoleillé",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ],
            ),
            Container(
              height: 160,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      height: 160,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(135, 197, 226, 0.6),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20), // Coin inférieur droit
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: 350,
                        ),
                        const Text(
                          "Prévision Heure Par Heure",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(83, 83, 83, 0.433),
                          ),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (var i = 0; i < 15; i += 1)
                            SizedBox(
                              width: 70,
                              height: 190,
                              child: Column(
                                children: [
                                  Container(
                                    height: 30,
                                  ),
                                  Text(
                                    heureCount(i),
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    emojiPrinter(value),
                                    style: const TextStyle(
                                      fontSize: 30,
                                    ),
                                  ),
                                  Text(
                                    randomDegree(),
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    height: 350,
                    width: double.infinity,
                    margin: const EdgeInsets.all(10),
                    child: Center(
                      child: Stack(
                        children: [
                          Container(
                            height: 350,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(135, 197, 226, 0.6),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                width: 250,
                              ),
                              Container(
                                child: const Text(
                                  "Plan Qualité de L'air",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromRGBO(83, 83, 83, 0.433),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 50,
                                    ),
                                    Container(
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 250,
                                            decoration: const BoxDecoration(
                                              color: Color.fromRGBO(
                                                  135, 197, 226, 0.4),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(60),
                                                bottomRight:
                                                    Radius.circular(60),
                                                topLeft: Radius.circular(60),
                                                topRight: Radius.circular(60),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Row(children: [
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            const SecondScreen(),
                                                      ),
                                                    );
                                                  },
                                                  child: SizedBox(
                                                    height: 236,
                                                    width: 340,
                                                    child: Image.asset(
                                                      "images/airQualityLyon.png",
                                                      alignment:
                                                          Alignment.center,
                                                    ),
                                                  ))
                                            ]),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const SecondScreen(),
                                                ),
                                              );
                                            },
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 10,
                                                ),
                                                const Text(
                                                  "Plus D'informations...",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                ),
                                                Container(
                                                  width: 150,
                                                ),
                                                const Text(
                                                  ">",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ))
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.blueAccent,
    );
  }
}
