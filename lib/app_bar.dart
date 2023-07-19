import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bar Use In Flutter "),
        actions: [
          const Icon(Icons.search),
          PopupMenuButton(itemBuilder: (context) {
            return [
              const PopupMenuItem(child: Text("First")),
              const PopupMenuItem(child: Text("Second")),
              const PopupMenuItem(child: Text("Third")),
              const PopupMenuItem(child: Text("Fourth")),
            ];
          }),
          const DrawerButton(),
        ],
        elevation: 30,
        // toolbarOpacity: 0.5,
        // toolbarHeight: 100,
        // shadowColor: Colors.red,
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.house), label: "Home", tooltip: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
        BottomNavigationBarItem(icon: Icon(Icons.store), label: "Store"),
      ]),
      // bottomNavigationBar: const BottomAppBar(
      //   color: Colors.blue,
      //   elevation: 10,
      //   height: 50,
      //   padding: EdgeInsets.symmetric(horizontal: 7),
      //   child: Row(
      //     children: [
      //       FaIcon(
      //         Icons.menu,
      //         color: Colors.white,
      //         size: 40,
      //         semanticLabel: "Home",
      //       ),
      //       FaIcon(
      //         Icons.house,
      //         color: Colors.white,
      //         size: 35,
      //         semanticLabel: "Home",
      //       ),
      //       FaIcon(
      //         Icons.search,
      //         color: Colors.white,
      //         size: 35,
      //         semanticLabel: "Home",
      //       ),
      //     ],
      //   ),
      // ),
      drawer: const Drawer(
        elevation: 500,
        width: 200,
        backgroundColor: Colors.amber,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: " Floating Button",
          elevation: 40,
          backgroundColor: Colors.purple,
          child: const Icon(Icons.add)),
      body: const Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Bar Tutorial",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          BottomAppBar(
            color: Colors.red,
          )
        ],
      )),
    );
  }
}
