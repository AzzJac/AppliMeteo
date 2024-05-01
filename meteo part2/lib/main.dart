import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Météo',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              height: 40,
            ),
            Row(
              children: [
                const Spacer(),
                SizedBox(
                  height: 25,
                  width: 25,
                  child: Image.asset(
                    "images/more.png",
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Text(
                  'Météo',
                  style: TextStyle(
                      fontSize: 46,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 70,
                ),
                SizedBox(
                  height: 52,
                  width: 390,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromRGBO(40, 40, 40, 1),
                      hintText: 'Ville ou aéroport',
                      hintStyle: const TextStyle(
                          color: Color.fromRGBO(154, 153, 160, 1),
                          fontSize: 18),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color.fromRGBO(154, 153, 160, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    // Handle the tap event
                  },
                  child: Container(
                    width: 480,
                    height: 130,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("images/imagemeteo1.jpeg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 16.0),
                              child: Text(
                                'Lyon',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Text(
                                '19:02',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 16.0),
                              child: Text(
                                'Belles éclaircies',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Text(
                                '19°',
                                style: TextStyle(
                                  fontSize: 47,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(right: 16.0, bottom: 8.0),
                              child: Text(
                                '22° - 8°',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                GestureDetector(
                    onTap: () {
                      // Handle the tap event
                    },
                    child: Container(
                      width: 480,
                      height: 130,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("images/imagemeteo2.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 16.0),
                                child: Text(
                                  'Annecy',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  '19:02',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 16.0),
                                child: Text(
                                  'Belles éclaircies',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 16.0),
                                child: Text(
                                  '18°',
                                  style: TextStyle(
                                    fontSize: 45,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(right: 16.0, bottom: 8.0),
                                child: Text(
                                  '21° - 9°',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ))
              ],
            ),
            const SizedBox(height: 15),
            const Column(
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'En savoir plus sur ',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(154, 153, 160, 1),
                        ),
                      ),
                      TextSpan(
                        text: 'les données météo',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(154, 153, 160, 1),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: ' et ',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(154, 153, 160, 1),
                        ),
                      ),
                      TextSpan(
                        text: 'les données de plans',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(154, 153, 160, 1),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
