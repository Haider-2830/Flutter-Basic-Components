import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

// ======================================= this is the online integration of api ===============================
void main() {
  runApp(const ApiApp());
}

class ApiApp extends StatelessWidget {
  const ApiApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ApiScreen(),
    );
  }
}

class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});
  @override
  State<ApiScreen> createState() => ApiScreenState();
}

class ApiScreenState extends State<ApiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Floating Action with Option ",style: TextStyle(color: Colors.white),),
          centerTitle: true,
        ),
        body: const Text(
          " Haider Ali ",
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 30),
        ),
      floatingActionButton:  SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animationDuration: const Duration(milliseconds: 200),
        visible: true,
        overlayColor: Colors.red,
        overlayOpacity: 0.7,
       backgroundColor: Colors.orange,
        // childrenButtonSize: Size(100,100),
        // curve: Curves.bounceInOut,
        // direction: SpeedDialDirection.left,
        // elevation: 20,
        // foregroundColor: Colors.red,
        spacing: 3,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.copy),
          ),
          SpeedDialChild(
              child: const Icon(Icons.share)
          ),
          SpeedDialChild(
              child: const Icon(Icons.check_circle_outline)
          )
        ],
      ),
    );
  }
}
