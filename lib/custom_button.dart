import 'package:flutter/material.dart';

//=================================== custom Button in flutter ======================================
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
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
          title: const Text("Tab Bar in Flutter"),
        ),
        drawer: Drawer(
          width: MediaQuery.of(context).size.width * 0.6,
          elevation: 40,
          child: ListView(
            children: const [
              UserAccountsDrawerHeader(
                  accountName: Text(" Haider "),
                  currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white, child: Text("HA")),
                  accountEmail: Text(" haider@gmail.com")),
              Card(
                elevation: 10,
                child: ListTile(
                  title: Text("Setting"),
                  trailing: Icon(Icons.settings),
                ),
              ),
              Card(
                elevation: 10,
                child: ListTile(
                  title: Text("TO-Do List"),
                  trailing: Icon(Icons.check_circle_outline),
                ),
              ),
              Card(
                elevation: 10,
                child: ListTile(
                  title: Text("Other Account"),
                  trailing: Icon(Icons.face_retouching_natural),
                ),
              )
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius:
                            BorderRadiusDirectional.circular(20))),
                        elevation: const MaterialStatePropertyAll(20)),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(duration: Duration(milliseconds: 800),content: Text(" Pressed Me ")));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.lock_outline_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          " Button ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    )),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: ElevatedButton(
                  style: const ButtonStyle(
                      elevation: MaterialStatePropertyAll(20),
                      padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
                      backgroundColor: MaterialStatePropertyAll(Colors.red),
                      shape: MaterialStatePropertyAll(CircleBorder(
                          side: BorderSide(color: Colors.orange, width: 4)))),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(duration: Duration(milliseconds: 800),content: Text(" Pressed Me ")));
                  },
                  child: const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                    style: const ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius:
                            BorderRadiusDirectional.only(topStart: Radius.circular(14),bottomEnd: Radius.circular(14)))),
                        backgroundColor: MaterialStatePropertyAll(Colors.red),
                        elevation: MaterialStatePropertyAll(20)),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(duration: Duration(milliseconds: 800),content: Text(" Pressed Me ")));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.lock_outline_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          " Button ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    )),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                    style: const ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius:
                            BorderRadiusDirectional.only(topEnd: Radius.circular(14),bottomStart: Radius.circular(14)))),
                        backgroundColor: MaterialStatePropertyAll(Colors.red),
                        elevation: MaterialStatePropertyAll(20)),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(duration: Duration(milliseconds: 800),content: Text(" Pressed Me ")));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.lock_outline_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          " Button ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    )),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: ElevatedButton(
                    style: const ButtonStyle(
                        shape: MaterialStatePropertyAll(OvalBorder()),
                        backgroundColor: MaterialStatePropertyAll(Colors.red),
                        elevation: MaterialStatePropertyAll(20)),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(duration: Duration(milliseconds: 800),content: Text(" Pressed Me ")));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.lock_outline_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          " Button ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
