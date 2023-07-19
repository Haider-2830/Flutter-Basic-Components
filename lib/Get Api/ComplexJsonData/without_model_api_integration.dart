import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

//======================================== Handling complex data (json structure) by using the api integration ===================================
main() {
  runApp(const ComplexJsonApp());
}

class ComplexJsonApp extends StatelessWidget {
  const ComplexJsonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  var data;
  Future<void> apiMethod() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(" Complex Json Api "),
          centerTitle: true,
        ),
        drawer: const Drawer(),
        body: FutureBuilder(
          future: apiMethod(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 12,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Api (Application Programmable Interface that fetch data online) Integration without Model Class of Json format ."
                              " It is value of Index $index ",
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text("Id : ${data[index]['id']}"),
                          Text("Name : ${data[index]['name']}"),
                          Text("Email : ${data[index]['email']}"),
                          Text("User Name : ${data[index]['username']}"),
                          Text("Street : ${data[index]['address']['street']}"),
                          Text(
                              "City Code : ${data[index]['address']['zipcode']}"),
                          Text("City : ${data[index]['address']['city']}"),
                          Text("Suite : ${data[index]['address']['suite']}"),
                          Text(
                              "Lat Code : ${data[index]['address']['geo']['lat']}"),
                          Text(
                              "Lng Code : ${data[index]['address']['geo']['lng']}"),
                          const SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          },
        ));
  }
}
