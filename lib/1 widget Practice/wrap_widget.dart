import 'package:flutter/material.dart';

main() {
  runApp(const StackApp());
}

class StackApp extends StatelessWidget {
  const StackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stack App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PageScreen(),
    );
  }
}

class PageScreen extends StatefulWidget {
  const PageScreen({super.key});

  @override
  State<PageScreen> createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          title: const Text(" Stack App"),
        ),
        body:
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Wrap(
            direction: Axis.vertical,
            alignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 5,
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.red,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.yellow,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.green,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.orange,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.black,
              ),
              Container(
                height: 150,
                width: 150,
                color: Colors.red,
              )
            ],
          ),
        )
        );
  }
}
