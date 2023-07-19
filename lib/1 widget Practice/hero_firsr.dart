import 'package:flutter/material.dart';

import 'hero_second.dart';

void main() {
  runApp(const HaiderApp());
}

// This is the first class that use for the App View
class HaiderApp extends StatelessWidget {
  const HaiderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: " Haider Customize App Design ",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const HomeScreenApp(),
    );
  }
}

// This is the Second class that use for the Page View
class HomeScreenApp extends StatefulWidget {
  const HomeScreenApp({super.key});

  @override
  State<HomeScreenApp> createState() => HomeScreenAppState();
}

class HomeScreenAppState extends State<HomeScreenApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen '),
        //titleSpacing: 2,
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreenState() ),);
          },
          child: Hero(
              tag: "Haider",
              child: Image.asset("assets/images/me.jpg",height: 250,width: 250,)
          ),
        ),
      ),
    );
  }
}
