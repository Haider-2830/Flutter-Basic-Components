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
      home: const MyHomePage(),
      // theme: ThemeData.dark(),
      theme: ThemeData(primarySwatch: Colors.orange),
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
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(
        length: 4,
        vsync: this,
        animationDuration: const Duration(milliseconds: 300));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tab Bar in Flutter"),
        ),
        bottomNavigationBar: Material(
          color: Colors.orange,
          child: TabBar(controller: _controller, tabs: const [
            Tab(
              text: " Chat ",
              icon: Icon(
                Icons.chat,
                size: 25,
                color: Colors.white,
              ),
            ),
            Tab(
              text: " Groups ",
              icon: Icon(
                Icons.group,
                size: 25,
                color: Colors.white,
              ),
            ),
            Tab(
              text: " Status ",
              icon: Icon(
                Icons.video_call_outlined,
                size: 25,
                color: Colors.white,
              ),
            ),
            Tab(
              text: " History ",
              icon: Icon(
                Icons.record_voice_over,
                size: 25,
                color: Colors.white,
              ),
            ),
          ]),
        ),
        drawer:  Drawer(
          width: MediaQuery.of(context).size.width*0.6,
          elevation: 40,
          child: ListView(
            children:const [
              UserAccountsDrawerHeader(accountName:Text(" Haider "),
                  currentAccountPicture: CircleAvatar(backgroundColor: Colors.white, child: Text("HA")),
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
        body: TabBarView(controller: _controller, children: [
          NewPage(titleOfPage: " Chat "),
          NewPage(titleOfPage: " Groups "),
          NewPage(titleOfPage: " Status "),
          NewPage(titleOfPage: " History "),
        ]));
  }
}
// ignore: must_be_immutable
class NewPage extends StatelessWidget {
  NewPage({required this.titleOfPage, super.key});
  late String titleOfPage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Text(
          titleOfPage,
          style: const TextStyle(
              color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 50),
        ),
      ),
    );
  }
}
