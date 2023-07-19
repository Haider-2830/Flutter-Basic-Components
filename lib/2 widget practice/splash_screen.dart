import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_basic_components/2%20widget%20practice/textField_widget.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration (seconds: 3), () {
      Navigator.pushReplacement(context,
           MaterialPageRoute(builder: (context) =>const LoginPage(),) );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.red.shade500, Colors.purple],
        )),
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        child: const Text(
          "Splash Screen",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            wordSpacing: 2
          ),
        ),
      ),
    );
  }

}
