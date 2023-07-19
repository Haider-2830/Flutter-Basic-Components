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
    // This is the callBack Function
    // ignore: non_constant_identifier_names
    /* press_me() {
      // ignore: avoid_print
      print("Haider Press Me ");
    } */

    return Scaffold(
        appBar: AppBar(
          title: const Text(" Stack App"),
        ),
        body:
            /* Padding(
        padding: const EdgeInsets.all(15.0),
        child: ElevatedButton(
          onPressed: press_me,
          child: const Text("Press Me ..!"),
        ),
      ), */
            SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(children: [
            Positioned(
              left: 40,
              top: 40,
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 180,
                width: 200,
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 90,
              left: 110,
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 160,
                width: 180,
                color: Colors.purple,
              ),
            ),
            Positioned(
              top: 150,
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 140,
                width: 160,
                color: Colors.orange,
              ),
            ),
          ]),
        ));
  }
}
