import 'package:flutter/material.dart';
//=================================== custom font and theme in flutter ======================================
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
      theme: ThemeData(primarySwatch: Colors.orange,
          // this is the custom theme in flutter
          textTheme: const TextTheme(
              displayLarge: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,fontFamily: 'CustomFont'),
              displaySmall: TextStyle(fontStyle: FontStyle.italic,
                  height: 2,wordSpacing: 7,letterSpacing: 3,fontWeight: FontWeight.bold,
                  fontSize: 35,color: Colors.white,backgroundColor: Colors.grey)
          )
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
        body: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
            children: [
              Text(" First Text",style: Theme.of(context).textTheme.displayLarge,),
              Text(" Second Text ",style: Theme.of(context).textTheme.displaySmall,),
              Text(" Third Text",style: Theme.of(context).textTheme.displayLarge,),
              const Text(" Fourth Text",style:  TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              Text(" Fifth Text",style: Theme.of(context).textTheme.displayLarge,),
              const Text(" Sixth Text"),
            ],
          ),
        )

    );
  }
}

