import 'package:flutter/material.dart';

void main() {
  runApp(const ScrollViewApp());
}

class ScrollViewApp extends StatelessWidget {
  const ScrollViewApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: " Animation ",
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  var array = [
    1,2,3,4,5,6,7,8,9
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(" ScrollView Animation"),
        ),
        // This is the dynamic method to display scroll animation
        body: Center(
          child: ListWheelScrollView(
            itemExtent: 150.0,
            children: array.map((index) => Container(width: 300,color: Colors.red,)).toList()
          ),
        ));
  }
}

// This is the method of making scroll animation statically
/*  Center(
          child: ListWheelScrollView(
            itemExtent: 150.0,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                width: 300,
                color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                width: 300,
                color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                width: 300,
                color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                width: 300,
                color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                width: 300,
                color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                width: 300,
                color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                width: 300,
                color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                width: 300,
                color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(20),
                width: 300,
                color: Colors.blue,
              ),
            ],
          ),
        ) */