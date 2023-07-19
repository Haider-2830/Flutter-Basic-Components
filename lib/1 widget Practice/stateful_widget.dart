import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const StateFullApp());
}

class StateFullApp extends StatelessWidget {
  const StateFullApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: " Haider Ali ",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({super.key});
  @override
  State<Screen> createState() => ScreenState();
}

class ScreenState extends State<Screen> {
  var pressRate = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(' StateFull Widget '),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "This is the Process of the changing the STATE by using the Stateful Widget",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              ),
              Card(
                elevation: 20,
                margin: const EdgeInsets.all(30),
                color: Colors.blue,
                child: IconButton(
                    onPressed: () {
                      // This is the setState Function that are use to make Change in UI of App
                      setState(() {
                        pressRate++;
                        // ignore: avoid_print
                        print(pressRate);
                      });
                    },
                    icon: const Icon(
                      Icons.add_alert_outlined,
                      color: Colors.white,
                      size: 30,
                    )),
              ),
              Text(
                'Press Rate : $pressRate',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const FaIcon(FontAwesomeIcons.amazon)
            ],
          ),
        ));
  }
}
