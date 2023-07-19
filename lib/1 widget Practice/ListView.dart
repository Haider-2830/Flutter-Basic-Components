import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Practice (Haider Ali)',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Column & Row Widget (Haider Ali)"),
        ),

        //<<<---------------- This is the Body of the App -------------->>>
        body: ListView(
          // scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(20),
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              height: 100,
              color: Colors.red,
              child: const Center(
                child: Text(
                  ' First Child ',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              height: 100,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  ' Second Child ',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.all(5),
              color: Colors.grey.shade900,
              child: const Center(
                child: Text(
                  ' Third Child ',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.all(5),
              color: Colors.purple,
              child: const Center(
                child: Text(
                  ' Fourth Child ',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.all(5),
              color: Colors.orange,
              child: const Center(
                child: Text(
                  ' Fifth Child ',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.all(5),
              color: Colors.brown,
              child: const Center(
                child: Text(
                  ' Sixth Child ',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(5),
              height: 100,
              color: Colors.red,
              child: const Center(
                child: Text(
                  ' Seventh Child ',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ],
        ));
  }
}
