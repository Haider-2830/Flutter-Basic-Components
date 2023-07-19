import 'package:flutter/material.dart';

void main() {
  runApp(const ListViewApp());
}

class ListViewApp extends StatelessWidget {
  const ListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: " I am Title of App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
      body: Container(
        height: 300,
        width: double.infinity,
        color: Colors.black,
        margin: const EdgeInsets.all(20),
        child:  Center(
          child: InkWell(
            child: const Text(
              " Container ",
              style: TextStyle(
                  color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            // ignore: avoid_print
            onTap: () => print("Single Tap"),
            // ignore: avoid_print
            onDoubleTap: () => print("Double Tap") ,
            // ignore: avoid_print
            onLongPress: () => print("Long Press") ,
            // ignore: avoid_print
            onHover: (value) => print(" Hovered Me "),
          ),
        ),
      ),
    );
  }
}
