// ignore: file_names
import 'package:flutter/material.dart';

void main() => runApp(const CalculatorApp());

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  var firstValue = TextEditingController();
  var secondValue = TextEditingController();
  var result = 0;
  void add() {
    result = int.parse(firstValue.text.toString()) +
        int.parse(secondValue.text.toString());
  }

  void sub() {
    result = int.parse(firstValue.text.toString()) -
        int.parse(secondValue.text.toString());
  }

  void mul() {
    result = int.parse(firstValue.text.toString()) *
        int.parse(secondValue.text.toString());
  }

  void div() {
    result = int.parse(firstValue.text.toString()) ~/
        int.parse(secondValue.text.toString());
  }
  @override
  build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Calculator App")),
        elevation: 10,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                " Result : $result",
                style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 8, 30, 5),
                child: TextField(
                  controller: firstValue,
                  decoration: const InputDecoration(
                    labelText: "Enter First Number ",
                    prefixIcon: Icon(
                      Icons.account_circle_outlined,
                      size: 25,
                      color: Colors.orange,
                    ),
                    labelStyle: TextStyle(
                        color: Colors.orange,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 8, 30, 20),
                child: TextField(
                  controller: secondValue,
                  decoration: const InputDecoration(
                    labelText: "Enter Second Number ",
                    prefixIcon: Icon(
                      Icons.account_circle_outlined,
                      size: 25,
                      color: Colors.orange,
                    ),
                    labelStyle: TextStyle(
                        color: Colors.orange,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      add();
                    });
                  }, child: const Text("Addition")),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      sub();
                    });
                  }, child: const Text("Subtract")),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      div();
                    });
                  }, child: const Text("Division")),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      mul();
                    });
                  }, child: const Text("Multiply")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
