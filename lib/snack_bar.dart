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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text(" Simple Snack Bar "),
                        showCloseIcon: true,
                        closeIconColor: Colors.white,
                        elevation: 20,
                      ),
                    );
                  },
                  child: const Text(" Simple Snack Bar "),
              ),
             const SizedBox(height: 20,),
              OutlinedButton(onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                 const SnackBar(
                   backgroundColor: Colors.purple,
                     duration: Duration(milliseconds: 600),
                     padding: EdgeInsets.all(20),
                     content: Row(
                    children: [
                      FaIcon(FontAwesomeIcons.heart,color: Colors.white,size: 20,),
                      SizedBox(width: 10,),
                      Text(" Animated Snack Bar "),
                    ],
                  ))
                );
              }, child:const Text(" Outlined Button "))
            ],
          ),
        ));
  }
}
