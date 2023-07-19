import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

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
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  void signUp(String email, password) async {
    try {
      http.Response response = await post(
          Uri.parse(
              "https://webhook.site/5c0faf20-cc8b-4b65-90a0-cb5da1934f7f"), //https://fakestoreapi.com/products
          body: {'email': email, 'password': password});
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        // ignore: avoid_print
        print('Login successfully');
      } else {
        // ignore: avoid_print
        print('failed');
      }
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(" Sign Up Api Integration "),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: email,
                  decoration: const InputDecoration(
                    labelText: " Email ",
                    hintText: " example@gmail.com ",
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      size: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  controller: password,
                  decoration: const InputDecoration(
                      labelText: " Password ",
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        size: 25,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility,
                        size: 22,
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    signUp(email.text.toString(), password.text.toString());
                  },
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.6,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(7)),
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
