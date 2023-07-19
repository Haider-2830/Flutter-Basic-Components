import 'package:flutter/material.dart';
import 'package:flutter_basic_components/Get Api//ComplexJsonData/ComplexJson.dart';
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
  List<ComplexJson> apiList = [];
  Future<List<ComplexJson>> apiMethod() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> value in data) {
        apiList.add(ComplexJson.fromJson(value));
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
        title: const Text(" Complex Json Api "),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: apiMethod(),
        builder: (context, AsyncSnapshot<List<ComplexJson>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: apiList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 15,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 8,),
                        Text( " ID : ${apiList[index].id}",),
                        Text("Name : ${apiList[index].name}"),
                        Text("User Name : ${apiList[index].username.toString()}"),
                        Text("City Name : ${apiList[index].address!.city.toString()}"),
                        Text("Street Name : ${apiList[index].address!.street.toString()}"),
                        Text("Suite Name : ${apiList[index].address!.suite.toString()}"),
                        Text("Lat is  : ${apiList[index].address!.geo!.lat.toString()}"),
                        Text("Lng is  : ${apiList[index].address!.geo!.lng.toString()}"),
                        Text("City-Code : ${snapshot.data![index].address!.zipcode}"),
                        Text("Company : ${apiList[index].company}"),
                        Text("Email : ${apiList[index].email}"),
                        const SizedBox(height: 8,)
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
