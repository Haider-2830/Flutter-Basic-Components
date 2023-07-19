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

class MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  bool iconPress = true;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

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
              const Text(
                " This is Animated Icons ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              IconButton(
                iconSize: 60,
                alignment: Alignment.center,
                color: Colors.blue,
                tooltip: "Menu Button",
                icon: AnimatedIcon(
                    icon: AnimatedIcons.menu_close, progress: controller),
                onPressed: () {
                  setState(() {
                    if (iconPress) {
                      controller.forward();
                      iconPress = false;
                    } else {
                      controller.reverse();
                      iconPress = true;
                    }
                  });
                },
              ),
              IconButton(
                  iconSize: 60,
                  color: Colors.purple,
                  alignment: Alignment.center,
                  onPressed: () {
                    setState(() {
                      if (iconPress) {
                        controller.forward();
                        iconPress = false;
                      } else {
                        controller.reverse();
                        iconPress = true;
                      }
                    });
                  },
                  icon: AnimatedIcon(
                      icon: AnimatedIcons.play_pause, progress: controller)),
              IconButton(
                  iconSize: 60,
                  color: Colors.purple,
                  alignment: Alignment.center,
                  onPressed: () {
                    setState(() {
                      if (iconPress) {
                        controller.forward();
                        iconPress = false;
                      } else {
                        controller.reverse();
                        iconPress = true;
                      }
                    });
                  },
                  icon: AnimatedIcon(
                      icon: AnimatedIcons.add_event, progress: controller)),
            ],
          ),
        ));
  }
}
