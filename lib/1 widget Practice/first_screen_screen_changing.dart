import 'package:flutter/material.dart';

import '../2 codepur/second.dart';
import '../2 codepur/splashScreen.dart';

void main() {
  runApp(const ScreenChangingApp());
}

class ScreenChangingApp extends StatelessWidget {
  const ScreenChangingApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: " Screen Changing",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});
  @override
  State<FirstScreen> createState() => FirstScreenState();
}

class FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  SecondScreen(" Second Screen "),
                  ),
                );
              },
              child: const Text('Click to Move in Second Screen')),
          ),
    );
  }
}
