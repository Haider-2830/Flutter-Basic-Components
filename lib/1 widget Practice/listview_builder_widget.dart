import 'package:flutter/material.dart';

void main() {
  runApp(const ListViewApp());

}

class ListViewApp extends StatelessWidget {
  const ListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: " I am Title of App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PageScreen(),
    );
  }
}

class PageScreen extends StatelessWidget {
  const PageScreen({super.key});

  @override
  Widget build(BuildContext context) {
// This is the array that store the value names
    var arrayList = [
      " Haider Ali ",
      " Hassan Ali ",
      " Usama Ali ",
      " Hamza Khan ",
      " Rana ",
      " Zarina ",
      " Maryam ",
      " Asia ",
      " Ansa ",
      " Haider Ali",
      " Bilal "
    ];

    return Scaffold(

        appBar: AppBar(
          title: const Text(" Title of Page "),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Text(
              arrayList[index],
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
            );
          },
          itemCount: arrayList.length,
          itemExtent: 100,
          padding: const EdgeInsets.all(20),
          // scrollDirection: Axis.horizontal,
        ));
  }
}
