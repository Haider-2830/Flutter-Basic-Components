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
  String? defaultValue = " Select Value ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Bar Use In Flutter "),
          actions: [
            PopupMenuButton(
                tooltip: " Menu Button ",
                elevation: 40,
                icon: const Icon(Icons.settings),
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: ListTile(
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
                    ),
                    PopupMenuItem(
                      child: ListTile(
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
                    ),
                    PopupMenuItem(
                      child: ListTile(
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
                    ),
                    PopupMenuItem(
                      child: ListTile(
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
                    )
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
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              " This is the Chip() ",
              style: TextStyle(fontSize: 30, color: Colors.grey),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Chip(
                  label: Text(" Facebook "),
                  labelStyle: TextStyle(color: Colors.white),
                  labelPadding: EdgeInsets.all(5),
                  shadowColor: Colors.purple,
                  avatar: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      "F",
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                  elevation: 30,
                  backgroundColor: Colors.purple,
                  side: BorderSide(color: Colors.white, width: 3),
                ),
                Chip(
                  label: Text(" Message "),
                  labelStyle: TextStyle(color: Colors.white),
                  labelPadding: EdgeInsets.all(5),
                  shadowColor: Colors.purple,
                  avatar: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.message,color: Colors.purple,size: 19,)
                  ),
                  elevation: 30,
                  backgroundColor: Colors.purple,
                  side: BorderSide(color: Colors.white, width: 3),
                ),
                Chip(
                  label: Text(" Privacy "),
                  labelStyle: TextStyle(color: Colors.white),
                  labelPadding: EdgeInsets.all(5),
                  shadowColor: Colors.purple,
                  avatar: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.verified_user_outlined,color: Colors.purple,size: 19,)
                  ),
                  elevation: 30,
                  backgroundColor: Colors.purple,
                  side: BorderSide(color: Colors.white, width: 3),
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Chip(
                  label: Text(" Privacy "),
                  labelStyle: TextStyle(color: Colors.white),
                  labelPadding: EdgeInsets.all(5),
                  shadowColor: Colors.purple,
                  avatar: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.verified_user_outlined,color: Colors.purple,size: 19,)
                  ),
                  elevation: 30,
                  backgroundColor: Colors.purple,
                  side: BorderSide(color: Colors.white, width: 3),
                ),
                Chip(
                  label: Text(" Facebook "),
                  labelStyle: TextStyle(color: Colors.white),
                  labelPadding: EdgeInsets.all(5),
                  shadowColor: Colors.purple,
                  avatar: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      "F",
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                  elevation: 30,
                  backgroundColor: Colors.purple,
                  side: BorderSide(color: Colors.white, width: 3),
                ),
                Chip(
                  label: Text(" Message "),
                  labelStyle: TextStyle(color: Colors.white),
                  labelPadding: EdgeInsets.all(5),
                  shadowColor: Colors.purple,
                  avatar: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.message,color: Colors.purple,size: 19,)
                  ),
                  elevation: 30,
                  backgroundColor: Colors.purple,
                  side: BorderSide(color: Colors.white, width: 3),
                ),

              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Chip(
                  label: Text(" Message "),
                  labelStyle: TextStyle(color: Colors.white),
                  labelPadding: EdgeInsets.all(5),
                  shadowColor: Colors.purple,
                  avatar: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.message,color: Colors.purple,size: 19,)
                  ),
                  elevation: 30,
                  backgroundColor: Colors.purple,
                  side: BorderSide(color: Colors.white, width: 3),
                ),
                Chip(
                  label: Text(" Facebook "),
                  labelStyle: TextStyle(color: Colors.white),
                  labelPadding: EdgeInsets.all(5),
                  shadowColor: Colors.purple,
                  avatar: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      "F",
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                  elevation: 30,
                  backgroundColor: Colors.purple,
                  side: BorderSide(color: Colors.white, width: 3),
                ),
                Chip(
                  label: Text(" Privacy "),
                  labelStyle: TextStyle(color: Colors.white),
                  labelPadding: EdgeInsets.all(5),
                  shadowColor: Colors.purple,
                  avatar: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.verified_user_outlined,color: Colors.purple,size: 19,)
                  ),
                  elevation: 30,
                  backgroundColor: Colors.purple,
                  side: BorderSide(color: Colors.white, width: 3),
                )
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Chip(
                  label: Text(" Facebook "),
                  labelStyle: TextStyle(color: Colors.white),
                  labelPadding: EdgeInsets.all(5),
                  shadowColor: Colors.purple,
                  avatar: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text(
                      "F",
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                  elevation: 30,
                  backgroundColor: Colors.purple,
                  side: BorderSide(color: Colors.white, width: 3),
                ),
                Chip(
                  label: Text(" Message "),
                  labelStyle: TextStyle(color: Colors.white),
                  labelPadding: EdgeInsets.all(5),
                  shadowColor: Colors.purple,
                  avatar: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.message,color: Colors.purple,size: 19,)
                  ),
                  elevation: 30,
                  backgroundColor: Colors.purple,
                  side: BorderSide(color: Colors.white, width: 3),
                ),
                Chip(
                  label: Text(" Privacy "),
                  labelStyle: TextStyle(color: Colors.white),
                  labelPadding: EdgeInsets.all(5),
                  shadowColor: Colors.purple,
                  avatar: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.verified_user_outlined,color: Colors.purple,size: 19,)
                  ),
                  elevation: 30,
                  backgroundColor: Colors.purple,
                  side: BorderSide(color: Colors.white, width: 3),
                )
              ],
            ),
          ],
        ));
  }
}
