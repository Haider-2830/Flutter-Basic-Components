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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Linear Gradient "),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:
            const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.red,
                      Colors.purple,
                    ],
                  //begin: FractionalOffset(1.0 ,0.0 ),
                  //end: FractionalOffset(0.0,1.0),
                ),),
      ),
    );
  }
}
