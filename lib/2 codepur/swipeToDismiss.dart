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
      home: const MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> haider = List.generate(20, (index) => "Items ${index + 1}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Swipe To Delete in Flutter"),
      ),
      body: ListView.builder(
        itemCount: haider.length,
        itemBuilder: (context, index) {
          return Dismissible(
              key: Key(haider[index]),
              onDismissed: (direction) {
                haider.removeAt(index);
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text(" Deleted Successfully")));
              }, // onDismissed
              background: Container(
                color: Colors.red,
              ),
              child: Container(
                color: Colors.grey,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.fromLTRB(1, 2, 1, 2),
                child:  ListTile(
                  title: Text(
                    " I am ${haider[index]}",
                    style:const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ));
        },
      ),
    );
  }
}
