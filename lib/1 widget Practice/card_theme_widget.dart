
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Practice (Haider Ali)',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
        //This is the first theme for text
          bodyLarge:  TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
              color: Colors.black,
          ),
        //This is the second theme for text
        bodySmall:  TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      )
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Button Widget (Haider Ali)"),
        ),
        //<<<---------------- This is the Body of the App -------------->>>
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                elevation: 20,
                child: TextButton(
                      child: const Text(' Click Me ..! ',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 32,
                      ),),
                      onPressed: (){
                        // ignore: avoid_print
                        print('I Elevated Button (Pressed)');
                      },
                    ),
                  ),
              Card(
                elevation: 20,
                color: Colors.purple,
                child: TextButton(
                  child: const Text(' Click Me ..! ',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                  ),),
                  onPressed: (){
                    // ignore: avoid_print
                    print('I Elevated Button (Pressed)');
                  },
                ),
              ),
              Card(
                elevation: 20,
                color: Colors.red,
                child: TextButton(
                  child: const Text(' Click Me ..! ',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                  ),),
                  onPressed: (){
                    // ignore: avoid_print
                    print('I Elevated Button (Pressed)');
                  },
                ),
              ),
              Column(
                children: [
                  Text(" First Text ",style: Theme.of(context).textTheme.bodyLarge),
                  Text(" Second Text ",style: Theme.of(context).textTheme.bodySmall),
                  Text(" Third Text ",style: Theme.of(context).textTheme.bodyLarge),
                  Text(" Fourth Text ",style: Theme.of(context).textTheme.bodySmall),
                  Text(" Fifth Text ",style: Theme.of(context).textTheme.bodyLarge),
                  Text(" Sixth Text ",style: Theme.of(context).textTheme.bodySmall),
                ],
              )
            ],
          ),
            ),
    );
  }
}