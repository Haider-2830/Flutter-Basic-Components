import 'package:flutter/material.dart';

void main() {
  runApp(const ExpandedApp());
}

class ExpandedApp extends StatelessWidget {
  const ExpandedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: " Title of App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 30),
        ),
      ),
      home: const PageScreen(),
    );
  }
}

class PageScreen extends StatelessWidget {
  const PageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Title of Page "),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  height: 150,
                  width: 183,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(color: Colors.black, width: 1),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, blurRadius: 10),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  height: 150,
                  width: 183,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    border: Border.all(color: Colors.black, width: 1),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, blurRadius: 10),
                    ],
                  ),
                )
              ],
            ),
            Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      height: 150,
                    //  width: 120,
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        border: Border.all(color: Colors.black, width: 1),
                        boxShadow: const [
                          BoxShadow(color: Colors.black, blurRadius: 10),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      height: 150,
                     // width: 120,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        border: Border.all(color: Colors.black, width: 1),
                        boxShadow: const [
                          BoxShadow(color: Colors.black, blurRadius: 10),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      height: 150,
                     // width: 120,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        border: Border.all(color: Colors.black, width: 1),
                        boxShadow: const [
                          BoxShadow(color: Colors.black, blurRadius: 10),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 300,
                    width: 100,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.black, width: 1),
                      boxShadow: const [
                        BoxShadow(color: Colors.black, blurRadius: 3),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 5, 10, 5),
                  height: 300,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(color: Colors.black, width: 1),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, blurRadius: 10),
                    ],
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 150,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      border: Border.all(color: Colors.black, width: 1),
                      boxShadow: const [
                        BoxShadow(color: Colors.black, blurRadius: 10),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 150,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      border: Border.all(color: Colors.black, width: 1),
                      boxShadow: const [
                        BoxShadow(color: Colors.black, blurRadius: 10),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 150,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      border: Border.all(color: Colors.black, width: 1),
                      boxShadow: const [
                        BoxShadow(color: Colors.black, blurRadius: 10),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 150,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      border: Border.all(color: Colors.black, width: 1),
                      boxShadow: const [
                        BoxShadow(color: Colors.black, blurRadius: 10),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 150,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      border: Border.all(color: Colors.black, width: 1),
                      boxShadow: const [
                        BoxShadow(color: Colors.black, blurRadius: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  height: 300,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    border: Border.all(color: Colors.black, width: 1),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, blurRadius: 10),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 300,
                    width: 100,
                    margin: const EdgeInsets.fromLTRB(0, 5, 10, 5),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(color: Colors.black, width: 1),
                      boxShadow: const [
                        BoxShadow(color: Colors.black, blurRadius: 3),
                      ],
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
