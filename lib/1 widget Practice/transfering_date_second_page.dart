import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable

class SecondPageScreen extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var Value ;
   SecondPageScreen(this.Value);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Second Page "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 400,
              color: Colors.orange,
              padding:const EdgeInsets.all(20),
              margin:const EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Text(
                "$Value",
                style:const TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
