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
      " Usama Ali ",
      " Hamza Khan ",
      " Rana ",
      " Zarina ",
      " Maryam ",
      " Asia ",
      " Ansa ",
      " Haider Ali",
      " Bilal ",
      " Haider Ali ",
      " Hassan Ali ",
      " Usama Ali ",
      " Hamza Khan ",
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
        body: ListView.separated(
          itemBuilder: (context, index) {
            return Text(
              arrayList[index],
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
            );
          },
          itemCount: arrayList.length,
          padding: const EdgeInsets.only(top: 10),
          separatorBuilder: (context, index) {
            return const Divider(
              height: 40,
              color: Colors.grey,
              thickness: 3,
            );
          },
        ));
  }
}
