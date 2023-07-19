import 'package:flutter/material.dart';
import 'package:flutter_basic_components/2%20widget%20practice/second_screen.dart';
import 'package:flutter_basic_components/2%20widget%20practice/splash_screen.dart';
//import 'package:shared_preferences/shared_preferences.dart';

main() => runApp(const LoginApp());

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // fontFamily: "CustomFont"
        // buttonColor: Colors.red
      ),
      home: const SplashScreen(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var email = TextEditingController();
    var password = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text(" Login Page")),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 300,
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.blue,
                    ),
                    hintText: "@gmail.com",
                    hintStyle: TextStyle(color: Colors.grey),
                    // errorText: " Required ",
                    // errorStyle: TextStyle(color: Colors.red,fontSize: 15),
                    labelText: "Enter Email ",
                    labelStyle: TextStyle(color: Colors.blue, fontSize: 18),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange, width: 2)),
                  ),
                ),
              ),
              Container(
                width: 300,
                margin: const EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: password,
                  keyboardType: TextInputType.streetAddress,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock_outline_rounded,
                      color: Colors.blue,
                    ),
                    // errorText: " Required ",
                    // errorStyle:const TextStyle(color: Colors.red,fontSize: 15),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.blue,
                        )),
                    labelText: "Enter Password ",
                    labelStyle:
                        const TextStyle(color: Colors.blue, fontSize: 18),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange, width: 2)),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SecondScreen(email.text.toString(),password.text.toString()),
                        ));
                    // var a = email.text.toString();
                    // if (a != null) {
                    //   print(a);
                    // } else {
                    //   print(" Nothing ");
                    // }
                    // setState(() {
                    //
                    // });
                  },
                  child: const Text("Login")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Haven't Account ?"),
                  TextButton(
                      onPressed: () {
                        // ignore: avoid_print
                        print(" Clicked ");
                      },
                      child: const Text(
                        "Create Account",
                      ))
                ],
              )
              // RichText(text: const TextSpan(
              //   style:TextStyle(color: Colors.grey,fontSize: 15),
              //   children: [
              //    TextSpan(text : " haven't account ? "),
              //     TextSpan(text : "Create Account ",style: TextStyle(color: Colors.blue,fontSize: 18)),
              //   ]
              // ))
            ],
          ),
        ),
      ),
    );
  }
}
