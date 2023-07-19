
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
          title: const Text("SingleChildScrollView (Haider Ali)"),
        ),
        //<<<---------------- This is the Body of the App -------------->>>
        body: SingleChildScrollView(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height:200,
                            width:200,
                            margin: const EdgeInsetsDirectional.all(8),
                            color: Colors.black,
                            child: const Center(
                              child: Text("I am Container " , style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700
                              ),),
                            ),
                          ),
                          Container(
                            height:200,
                            width:200,
                            margin: const EdgeInsetsDirectional.all(8),
                            color: Colors.purpleAccent,
                            child: const Center(
                              child: Text("I am Container " , style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700
                              ),),
                            ),
                          ),
                          Container(
                            height:200,
                            width:200,
                            margin: const EdgeInsetsDirectional.all(8),
                            color: Colors.black,
                            child: const Center(
                              child: Text("I am Container " , style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700
                              ),),
                            ),
                          ),
                          Container(
                            height:200,
                            width:200,
                            margin: const EdgeInsetsDirectional.all(8),
                            color: Colors.red,
                            child: const Center(
                              child: Text("I am Container " , style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700
                              ),),
                            ),
                          ),
                        ],
                        ),
                    ),
                    Container(
                      margin: const EdgeInsetsDirectional.all(8),
                      height:300,
                      // width: 250,
                      color: Colors.red,
                      child: const Center(
                        child: Text("I am First Container " , style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700
                        ),),
                      ),
                    ),
                    Container(
                      height:300,
                      margin: const EdgeInsetsDirectional.all(8),
                     // width: 250,
                      color: Colors.black,
                      child: const Center(
                        child: Text("I am Second Container " , style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700
                        ),),
                      ),
                    ),
                    Container(
                      height:300,
                      margin: const EdgeInsetsDirectional.all(8),
                      // width: 250,
                      color: Colors.lightBlueAccent,
                      child: const Center(
                        child: Text("I am Third Container " , style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700
                        ),),
                      ),
                    ),
                    Container(
                      height:300,
                      margin: const EdgeInsetsDirectional.all(8),
                      // width: 250,
                      color: Colors.green,
                      child: const Center(
                        child: Text("I am Fourth Container " , style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700
                        ),),
                      ),
                    ),
                    Container(
                      height:300,
                      margin: const EdgeInsetsDirectional.all(8),
                      // width: 250,
                      color: Colors.red,
                      child: const Center(
                        child: Text("I am Fifth Container " , style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
            );
  }
}