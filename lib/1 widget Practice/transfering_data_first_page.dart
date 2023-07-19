import 'package:flutter/material.dart';
import 'package:flutter_basic_components/1%20widget%20Practice/transfering_date_second_page.dart';

void main() {
  runApp(const ChangingDataApp());
}

class ChangingDataApp extends StatelessWidget {
  const ChangingDataApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: " ChangingDataApp ",
        theme: ThemeData(primarySwatch: Colors.orange),
        home: const FirstPageScreen());
  }
}

class FirstPageScreen extends StatefulWidget {
  const FirstPageScreen({super.key});
  @override
  State<FirstPageScreen> createState() => FirstPageScreenState();
}

class FirstPageScreenState extends State<FirstPageScreen> {
  var firstValue = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 300,
              child: TextField(
                controller: firstValue,
                decoration: const InputDecoration(
                    labelText: "Enter Message Here ",
                    labelStyle: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.w500),
                    hintText: " I Love You ",
                    hintStyle: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w500),
                    prefixIcon: Icon(
                      Icons.mark_email_unread_outlined,
                      color: Colors.orange,
                      size: 30,
                    ),
                    border: UnderlineInputBorder(),
                    contentPadding: EdgeInsets.all(10)),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                         SecondPageScreen(firstValue.text.toString()),
                    ));
               //
                // setState((){});
              },
              child: const Text("Pass Value To Second Page"))
        ],
      ),
    );
  }
}
