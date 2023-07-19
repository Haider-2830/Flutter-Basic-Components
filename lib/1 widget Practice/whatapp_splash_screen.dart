import 'dart:async';
import 'package:flutter/material.dart';
import 'maping_list_widget.dart';

class WhatAppSplashScreen extends StatefulWidget {
  const WhatAppSplashScreen({super.key});
  @override
  State<WhatAppSplashScreen> createState() => WhatAppSplashScreenState();
}

class WhatAppSplashScreenState extends State<WhatAppSplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>const  HomeScreenApp(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:  [
              Colors.red.shade500,
              Colors.purple
            ]
          )
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.mark_email_unread_outlined,
                size: 45,
                color: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  " WhatApp",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
