import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  // ignore: non_constant_identifier_names
  late AnimationController controller;
  // ignore: non_constant_identifier_names
  late Animation<double> icon_controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
    icon_controller =
        CurvedAnimation(parent: controller, curve: Curves.bounceInOut);
    icon_controller.addListener(() => setState(() {}));
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const  Center(child:Text("Login Page")),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            const Image(
              image: AssetImage("assets/images/c2.jpg"),
              fit: BoxFit.cover,
              color: Colors.black87,
              colorBlendMode: BlendMode.darken,

            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // FlutterLogo(
                    //   //  size: icon_controller.value*100,
                    //   size: 200,
                    // ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 8),
                      //margin:const EdgeInsets.all(5),
                      child: const TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined,
                                color: Colors.white, size: 25),
                            labelText: " Enter Email ",
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                letterSpacing: 2),
                            hintText: "@gmail.com",
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2))),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 8),
                      //margin:const EdgeInsets.all(5),
                      child: const TextField(
                        obscureText: true,
                        obscuringCharacter: "*",
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_outline_rounded,
                                color: Colors.white, size: 25),
                            suffixIcon: Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.white,
                            ),
                            labelText: " Enter Password ",
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                letterSpacing: 2),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2))),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
                      //margin:const EdgeInsets.all(5),
                      child: const TextField(
                        obscureText: true,
                        obscuringCharacter: "*",
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_outline_rounded,
                                color: Colors.white, size: 25),
                            suffixIcon: Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.white,
                            ),
                            labelText: " Confirm Password ",
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                letterSpacing: 2),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2))),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 20),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("haven't account ?",
                            style:
                                TextStyle(fontSize: 15, color: Colors.white)),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "create account",
                              style: TextStyle(fontSize: 16),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
