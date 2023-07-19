import 'package:flutter/material.dart';
import 'package:flutter_basic_components/1%20widget%20Practice/whatapp_second_screen.dart';
import 'package:flutter_basic_components/1%20widget%20Practice/whatapp_splash_screen.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const WhatAppSplashScreen(),
    );
  }
}

// This is the Second class that use for the Page View
// ignore: must_be_immutable
class HomeScreenApp extends StatefulWidget {
  const HomeScreenApp({super.key});

  @override
  State<HomeScreenApp> createState() => _HomeScreenAppState();
}

class _HomeScreenAppState extends State<HomeScreenApp> {
  @override
  Widget build(BuildContext context) {
    var array = [
      {'Name': " Haider Ali", "Roll No": "228", "Course": " Computer Science"},
      {'Name': " Hassan Ali", "Roll No": "229", "Course": " Computer Science"},
      {
        'Name': " Zarina Akram",
        "Roll No": "239",
        "Course": " Computer Science"
      },
      {'Name': " M Usama", "Roll No": "240", "Course": " Computer Science"},
      {
        'Name': " Haroon Bajwa",
        "Roll No": "237",
        "Course": " Computer Science"
      },
      {'Name': " Ansa Qurban", "Roll No": "230", "Course": " Computer Science"},
      {'Name': " Haider Ali", "Roll No": "228", "Course": " Computer Science"},
      {'Name': " Hassan Ali", "Roll No": "229", "Course": " Computer Science"},
      {
        'Name': " Zarina Akram",
        "Roll No": "239",
        "Course": " Computer Science"
      },
      {'Name': " M Usama", "Roll No": "240", "Course": " Computer Science"},
      {
        'Name': " Haroon Bajwa",
        "Roll No": "237",
        "Course": " Computer Science"
      },
      {'Name': " Ansa Qurban", "Roll No": "230", "Course": " Computer Science"},
      {'Name': " Haider Ali", "Roll No": "228", "Course": " Computer Science"},
      {'Name': " Hassan Ali", "Roll No": "229", "Course": " Computer Science"},
      {
        'Name': " Zarina Akram",
        "Roll No": "239",
        "Course": " Computer Science"
      },
      {'Name': " M Usama", "Roll No": "240", "Course": " Computer Science"},
      {
        'Name': " Haroon Bajwa",
        "Roll No": "237",
        "Course": " Computer Science"
      },
      {'Name': " Ansa Qurban", "Roll No": "230", "Course": " Computer Science"}
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              Icon(
                Icons.mark_email_unread_outlined,
                size: 30,
                color: Colors.white,
              ),
              Text('  WhatApp'),
            ],
          ),
          //titleSpacing: 2,
        ),
        body: ListView(
            itemExtent: 65,
            children: array
                .map(
                  (e) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WhatAppSecondScreen(),
                          ));
                    },
                    child: ListTile(
                      leading: const Icon(
                        Icons.account_box_outlined,
                        color: Colors.blue,
                        size: 40,
                      ),
                      title: Text(
                        e['Name'].toString(),
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 26),
                      ),
                      subtitle: Text(
                        e['Course'].toString(),
                      ),
                      trailing: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.blue.shade500,
                          child: Text(
                            e['Roll No'].toString(),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                )
                .toList()));
  }
}
/* body: ListView(
            children: array
                .map((value) => Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.red, Colors.purple])),
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(10),
                      child: Text(
                        value['Name'].toString(),
                        style:const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ))
                .toList())); */

/*  ListView(
            children: array
                .map(
                  (e) => ListTile(
                    leading: const Icon(
                      Icons.account_box_outlined,
                      color: Colors.blue,
                      size: 40,
                    ),
                    title: Text(
                      e['Name'].toString(),
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 26),
                    ),
                    subtitle: Text(
                      e['Course'].toString(),
                    ),
                    trailing: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.blue.shade500,
                        child: Text(
                          e['Roll No'].toString(),
                          style:const TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                )
                .toList())); */
