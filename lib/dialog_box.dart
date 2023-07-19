import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Bar',
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
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Bar Use In Flutter "),
          actions: [
            const Icon(Icons.search),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text("First")),
                const PopupMenuItem(child: Text("Second")),
                const PopupMenuItem(child: Text("Third")),
                const PopupMenuItem(child: Text("Fourth")),
              ];
            }),
            const DrawerButton(),
          ],
          elevation: 30,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            tooltip: " Floating Button",
            elevation: 40,
            backgroundColor: Colors.purple,
            child: const Icon(Icons.add)),
        drawer: const Drawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // this is the simple dialog box
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          elevation: 30,
                          title: const Text(" Simple Dialog "),
                          titlePadding: const EdgeInsets.all(10),
                          shadowColor: Colors.black,
                          alignment: Alignment.center,
                          children: [
                            SimpleDialogOption(
                              child: const Text(" cancel"),
                              onPressed: () {
                                Navigator.pop(context);
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  backgroundColor: Colors.purple,
                                  content: Row(
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.heart,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(" You Pressed cancel "),
                                    ],
                                  ),
                                  duration: Duration(milliseconds: 700),
                                ));
                              },
                            ),
                            SimpleDialogOption(
                              child: const Text(" ok "),
                              onPressed: () {
                                Navigator.pop(context);
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  backgroundColor: Colors.purple,
                                  content: Row(
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.heart,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text(" You Pressed ok "),
                                    ],
                                  ),
                                  duration: Duration(milliseconds: 700),
                                ));
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text("Simple Dialog")),
              const SizedBox(height: 40,),
              // this is the alert dialog box
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: const Text(
                              "Write Message Here .This is the body of the alert box  "),
                          title: const Text(" Title of Alert DialogBox"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    backgroundColor: Colors.purple,
                                    content: Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.heart,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(" You Pressed YES "),
                                      ],
                                    ),
                                    duration: Duration(milliseconds: 700),
                                  ));
                                },
                                child: const Text(" Yes ")),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    backgroundColor: Colors.purple,
                                    content: Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.heart,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(" You Pressed NO "),
                                      ],
                                    ),
                                    duration: Duration(milliseconds: 700),
                                  ));
                                },
                                child: const Text(" NO ")),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text(" Alert Dialog Box ")),
              const SizedBox(height: 40,),
              // this is the simple dialog box
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(
                          content: const Text(" I am the Body of the Widget "),
                          title: const Text("Cupertino Title"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    backgroundColor: Colors.purple,
                                    content: Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.house,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(" Ok Fine ! Yes ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)
                                      ],
                                    ),
                                  ));
                                },
                                child: const Text(" Yes ")),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    backgroundColor: Colors.purple,
                                    content: Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.house,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(" Ok Fine ! No ",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)
                                      ],
                                    ),
                                  ));
                                },
                                child: const Text(" No "))
                          ],
                        );
                      },
                    );
                  },
                  child: const Text(" Cupertino Dialog "))
            ],
          ),
        ));
  }
}
