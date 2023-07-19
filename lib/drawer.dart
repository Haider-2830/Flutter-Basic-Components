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
          PopupMenuButton(itemBuilder: (context) {
            return [
              const PopupMenuItem(child: Text("First")),
              const PopupMenuItem(child: Text("Second")),
              const PopupMenuItem(child: Text("Third")),
              const PopupMenuItem(child: Text("Fourth")),
            ];
          }),
        ],
      ),
      drawer: Container(
        margin: const EdgeInsets.fromLTRB(10, 40, 0, 10),
        child: Drawer(
          width: 250,
          backgroundColor: Colors.white,
          elevation: 50,
          shadowColor: Colors.black,
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  accountName: Text(" Haider "),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      "HA",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  accountEmail: Text(" haider@gmail.com ")),
              ListTile(
                title: const Text(
                  " Message ",
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                leading: const Icon(Icons.message),
              ),
              ListTile(
                title: const Text(
                  " Login ",
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                leading: const Icon(Icons.account_circle_outlined),
              ),
              ListTile(
                title: const Text(
                  " Alarm ",
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                leading: const Icon(Icons.add_alarm_sharp),
              ),
              ListTile(
                title: const Text(
                  " Facebook ",
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                leading: const Icon(Icons.facebook_sharp),
              ),
              ListTile(
                title: const Text(
                  " Setting ",
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                leading: const Icon(Icons.settings),
              ),
              ListTile(
                title: const Text(" First "),
                subtitle: const Text(" Write At Thing As a Body Here "),
                tileColor: Colors.white,
                contentPadding: const EdgeInsets.all(5),
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                titleAlignment: ListTileTitleAlignment.center,
                trailing: const Icon(Icons.add_a_photo_outlined),
                leading: const Icon(
                  Icons.account_circle_outlined,
                  size: 30,
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: " Floating Button",
          elevation: 40,
          backgroundColor: Colors.purple,
          child: const Icon(Icons.add)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.grey,
                  alignment: Alignment.center,
                  child: const Text(" Flex 3 "),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blueGrey,
                  alignment: Alignment.center,
                  child: const Text(" Flex 1 "),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ],
          )
        ],
      ),
    );
  }
}
