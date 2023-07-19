
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
  int _index = 0;
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
        body: Column(
          children: [
            Container(
              height: 500,
              width: double.infinity,
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IndexedStack(
                  alignment: Alignment.center,
                  index: _index,
                  children: [
                    Container(
                      color: Colors.red,
                      alignment: Alignment.center,
                      child:const Text(" First ",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      color: Colors.purple,
                      alignment: Alignment.center,
                      child:const Text(" Second ",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child:const Text(" Third ",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      color: Colors.orange,
                      alignment: Alignment.center,
                      child:const Text(" Fourth ",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                _index < 3 ? _index++ : _index = 0 ;
              });
            }, child: const Text(" Click Me To Change"),)
          ],
        )
    );
  }
}
