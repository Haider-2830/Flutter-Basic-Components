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
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              backgroundColor: Colors.purple,
              centerTitle: true,
              elevation: 30,
              expandedHeight: 400,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(" Sliver App Bar "),
                centerTitle: true,
              ),
            ),
            SliverFixedExtentList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return Container(
                    alignment: Alignment.center,
                    child: Text(" List Item $index "),
                  );
                }),
                itemExtent: 60.0)
          ],
        ));
  }
}
