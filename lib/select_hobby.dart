import 'package:flutter/material.dart';

// ======================================== CheckboxListTile Widget ===========================================
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
  List selectedGame = [];
  bool? football = false;
  bool? cricket = false;
  bool? hokey = false;
  bool? volleyBall = false;
  bool? singing = false;
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Chip(
                      label: Text(
                        "$selectedGame",
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      backgroundColor: Colors.purple,
                    ),
                  ],
                ),
              ),
              CheckboxListTile(
                  title: const Text(
                    " Football ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  // tileColor: Colors.grey,
                  // activeColor: Colors.red,
                  value: football,
                  checkboxSemanticLabel: "FootBall",
                  onChanged: (currentValue) {
                    setState(() {
                      football = currentValue;
                      String selectedValue = " Football " ;
                      currentValue! ? selectedGame.add(selectedValue) : selectedGame.remove(selectedValue) ;
                    });
                  }),
              CheckboxListTile(
                  title: const Text(
                    " Cricket ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: cricket,
                  onChanged: (currentValue) {
                    setState(() {
                      cricket = currentValue;
                      String selectedValue = " Cricket " ;
                      currentValue! ? selectedGame.add(selectedValue) : selectedGame.remove(selectedValue) ;
                    });
                  }),
              CheckboxListTile(
                  title: const Text(
                    " Hokey ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: hokey,
                  onChanged: (currentValue) {
                    setState(() {
                      hokey = currentValue;
                      String selectedValue = " Hokey " ;
                      currentValue! ? selectedGame.add(selectedValue) : selectedGame.remove(selectedValue) ;
                    });
                  }),
              CheckboxListTile(
                  title: const Text(
                    " VolleyBall ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: volleyBall,
                  onChanged: (currentValue) {
                    setState(() {
                      volleyBall = currentValue;
                      String selectedValue = " VolleyBall " ;
                      currentValue! ? selectedGame.add(selectedValue) : selectedGame.remove(selectedValue) ;
                    });
                  }),
              CheckboxListTile(
                  title: const Text(
                    " Singing ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: singing,
                  onChanged: (currentValue) {
                    setState(() {
                      singing= currentValue;
                      String selectedValue = " Singing " ;
                      currentValue! ? selectedGame.add(selectedValue) : selectedGame.remove(selectedValue) ;
                    });
                  }),
            ],
          ),
        ));
  }
}
