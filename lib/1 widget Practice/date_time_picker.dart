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
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            bodyLarge: TextStyle(
                fontSize: 30, color: Colors.red, fontWeight: FontWeight.w800),
          )),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              Icon(Icons.timer),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Date And Time'),
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                  onPressed: () async {
                    DateTime? dateOfBirth = await showDatePicker(
                        context:context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2024));
                    if (dateOfBirth != null) {
                      // ignore: avoid_print
                      print(dateOfBirth);
                    }
                  },
                  child: const Text('Click Me For Date')),
            ),
            ElevatedButton(
                onPressed: () async {
                  TimeOfDay? todayTime = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                      initialEntryMode: TimePickerEntryMode.input);
                  if (todayTime != null) {
                    // ignore: avoid_print
                    print(todayTime);
                  }
                },
                child: const Text('Click Me For Time')),
          ],
        ));
  }
}
