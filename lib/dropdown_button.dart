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
  List<String> selectItem = <String>[
    "Haider Ali",
    "Hassan Ali",
    "Usama Ali",
    "Ansa Ali"
  ];
  String ? defaultValue = " Select Value ";
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: DropdownButton(
            isExpanded: true,
            hint: Text("$defaultValue"),
            onChanged: (String? setThisValue) {
              setState(() {
                defaultValue = setThisValue ;
              });
            },
            items: selectItem.map<DropdownMenuItem<String>>(
                    (String selectedValue) {
                  return DropdownMenuItem<String>(
                      value: selectedValue, child: Text(selectedValue));
                }).toList(),
          ),
        ),
      ),
    );
  }
}
