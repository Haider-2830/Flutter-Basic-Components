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
          title: const Text(" ScrollView Animation"),
        ),
        // This is the dynamic method to display scroll animation
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: Image.asset(
                      "assets/images/me.jpg",
                      width: 200,
                      height: 300,
                    )),
                const SizedBox(
                  height: 20,
                ),
                ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(200),
                        topRight: Radius.circular(200)),
                    child: Image.asset(
                      "assets/images/haider.jpg",
                      width: 200,
                      height: 300,
                    )),
                const SizedBox(
                  height: 20,
                ),
                ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60)),
                    child: Image.asset(
                      "assets/images/papa.jpg",
                      width: 200,
                      height: 300,
                    )),
              ],
            ),
          ),
        ));
  }
}

