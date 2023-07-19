import 'package:flutter/material.dart';

void main() {
  runApp(const DemoApp());
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: " I am Title of App",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomePage(),
    );
  }
}

// Second class
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' I am Title of Page '),
      ),
      body: Center(
        child: Container(
            height: 320,
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black, width: 1),
             // borderRadius: const BorderRadius.horizontal(
              //    left: Radius.circular(60)),
              boxShadow: const [
                 BoxShadow(
                   color: Colors.black,
                   spreadRadius: 2,
                   blurRadius: 25,
                 )
              ]  ,
            )),
      ),
    );
  }
}
