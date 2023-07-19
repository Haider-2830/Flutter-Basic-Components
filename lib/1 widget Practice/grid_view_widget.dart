import 'package:flutter/material.dart';

main() {
  runApp(const GridViewApp());
}

class GridViewApp extends StatelessWidget {
  const GridViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: " GridView App",
      theme: ThemeData(
        primarySwatch: Colors.orange,
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
    var colorsArray = [
      Colors.red,
      Colors.purple,
      Colors.pink,
      Colors.black,
      Colors.grey,
      Colors.yellow,
      Colors.blue,
      Colors.orange,
      Colors.brown,
      Colors.green,
      Colors.indigo,
      Colors.red.shade500,
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Title'),
      ),
      body: GridView.builder(
        itemBuilder: (context, index) {
          return Container(
            color: colorsArray[index],
            height: 60,
            width: 60,
          );
        },
        itemCount: colorsArray.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150, crossAxisSpacing: 10, mainAxisSpacing: 10),
        padding: const EdgeInsets.all(10),
      ),
// This is the GridView.count & extent and it's Property
      /* child: GridView.extent(
          maxCrossAxisExtent: 100,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.white,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.white,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.white,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.white,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.white,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.white,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.white,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.white,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.white,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.white,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.white,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.white,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.white,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.white,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.white,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.white,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.white,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.white,
            ),
          ],
        ), */
    );
  }
}
