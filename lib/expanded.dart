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
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: " Floating Button",
          elevation: 40,
          backgroundColor: Colors.purple,
          child: const Icon(Icons.add)),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.grey,
                  alignment: Alignment.center,
                  child:const Text(" Flex 3 "),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blueGrey,
                  alignment: Alignment.center,
                  child:const Text(" Flex 1 "),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),

            ],
          )
        ],
      ),
    );
  }
}
