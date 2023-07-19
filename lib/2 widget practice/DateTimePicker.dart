import 'package:flutter/material.dart';
import 'package:flutter_basic_components/2%20widget%20practice/splash_screen.dart';

void main() => runApp(const TextFieldApp());

class TextFieldApp extends StatelessWidget {
  const TextFieldApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
      ThemeData(primarySwatch: Colors.orange, fontFamily: " CustomFont "),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

class TextFieldFirstPage extends StatefulWidget {
  const TextFieldFirstPage({super.key});
  @override
  State<TextFieldFirstPage> createState() => TextFieldFirstPageState();
}

class TextFieldFirstPageState extends State<TextFieldFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" TextFieldFirstPage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  DateTime? date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2024));
                  // if (date != null) {
                  //   print(date);
                  // }
                },
                child: const Text(" Date Picker")),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () async {
                  TimeOfDay? time = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                      initialEntryMode: TimePickerEntryMode.dial);
                  // if(time != null){
                  //   print(time);
                  // }
                },
                child: const Text("Time Picker")),
          ],
        ),
      ),
    );
  }
}
