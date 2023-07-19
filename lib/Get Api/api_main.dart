import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_basic_components/Get Api//Haider.dart';
import 'package:http/http.dart' as http;

// ======================================= this is the online integration of api ===============================
void main() {
  runApp(const ApiApp());
}

class ApiApp extends StatelessWidget {
  const ApiApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ApiScreen(),
    );
  }
}

class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});
  @override
  State<ApiScreen> createState() => ApiScreenState();
}

class ApiScreenState extends State<ApiScreen> {
  List<JsonHaider> apiList = [];
  Future<List<JsonHaider>> apiFunction() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> value in data) {
        apiList.add(JsonHaider.fromJson(value));
      }
      return apiList;
    } else {
      return apiList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Online Api Integration "),
          centerTitle: true,
        ),
        body: FutureBuilder(
          future: apiFunction(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title:
                          Text(" Title : ${apiList[index].title.toString()}"),
                      subtitle: Text(
                          " Description : ${apiList[index].completed.toString()}"),
                      trailing: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Text(
                          apiList[index].id.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Text(
                          apiList[index].userId.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}
