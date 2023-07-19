import 'dart:io';
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
        title: const Text("Button Widget (Haider Ali)"),
      ),
      //<<<---------------- This is the Body of the App -------------->>>
      body: Center(
        child: Container(
          height: 200,

          width: 300,
          color: Colors.red,
          child: Center(
            child: ElevatedButton(
              child: const Text(' Click Me ..! ',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 32,
              ),),
              onPressed: (){
                print('I Elevated Button (Pressed)');
              },
            ),
          ),
        ),
      )
    );
  }
}