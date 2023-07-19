import 'package:flutter/material.dart';

void main() {
  runApp(const ListTileApp());
}

class ListTileApp extends StatelessWidget {
  const ListTileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: " List Tile ",
      theme: ThemeData(primaryColor: Colors.purple),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var name = [
      " Babar Azam",
      " David Warner ",
      " Naeem Khan ",
      " Haider Ali",
      " Hassan Ali ",
      " M Ibrahim ",
      " Zarina Akram",
      " Haroon Saab",
      " Mass "
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text(" List Tile"),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
                leading: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/me.jpg'),
                    radius: 30,
                    backgroundColor: Colors.black),
                title: Text(
                  name[index],
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                subtitle: const Text(
                  "WhatApp",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                tileColor: Colors.grey.shade300,
                trailing: const Icon(
                  Icons.add_a_photo_outlined,
                  color: Colors.black,
                  shadows: [
                    BoxShadow(
                        color: Colors.black, spreadRadius: 2, blurRadius: 50)
                  ],
                ));
          },
          itemCount: name.length,
          padding: const EdgeInsets.all(20),
          separatorBuilder: (context, index) {
            return const Divider(
              height: 20,
              color: Colors.grey,
              thickness: 2,
            );
          },
        ));
  }
}
