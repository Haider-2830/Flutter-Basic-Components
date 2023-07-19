import 'package:flutter/material.dart';

main() {
  runApp(const StackApp());
}

class StackApp extends StatelessWidget {
  const StackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rich Text Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
    return Scaffold(
        appBar: AppBar(
          title: const Text('Rich Text Widget'),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: RichText(
              text: const TextSpan(
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  children: [
                    TextSpan(
                        text: " Haider Ali",
                        style: TextStyle(color: Colors.blue, fontSize: 30)),
                    TextSpan(text: ' in Flutter World , '),
                    TextSpan(text: 'The Land of Opportunities , '),
                    TextSpan(text: 'Make a Plan And '),
                    TextSpan(

                        text: 'Beat It',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue,
                        ))
                  ]),
            ),
          ),
        ));
  }
}
