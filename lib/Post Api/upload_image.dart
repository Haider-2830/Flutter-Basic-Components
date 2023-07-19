import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ApiScreen(),
    );
  }
}

//https://fakestoreapi.com/products
class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});
  @override
  State<ApiScreen> createState() => ApiScreenState();
}

class ApiScreenState extends State<ApiScreen> {
  File? image;
  final picker = ImagePicker();
  bool spinner = false;
  Future getImage() async {
    final pickedImage =
        await picker.pickImage(source: ImageSource.gallery, imageQuality: 50);
    if (pickedImage != null) {
      image = File(pickedImage.path);
      setState(() {});
    } else {
      // ignore: avoid_print
      print(" Not Selected Image ");
    }
  }

  Future uploadImage() async {
    setState(() {
      spinner = true;
    });
    var stream = http.ByteStream(image!.openRead());
    stream.cast();
    var length = await image!.length();
    var url = Uri.parse("https://fakestoreapi.com/products");
    var request = http.MultipartRequest('POST', url);
    request.fields['title'] = " static title ";
    var multiPort = http.MultipartFile(
      'image',
      stream,
      length,
    );
    request.files.add(multiPort);
    var response = await request.send();
    if (response.statusCode == 200) {
      // ignore: avoid_print
      print(" Success ");
      setState(() {
        spinner = false;
      });
    } else {
      // ignore: avoid_print
      print(" Failed ");
      setState(() {
        spinner = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: spinner,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Upload Image Api Integration "),
            centerTitle: true,
          ),
          body:Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height *0.7,
                width: double.infinity,
                color: Colors.grey.shade400,
                child: ElevatedButton(onPressed: (){
                  getImage();
                }, child: image == null ? const Text(" Select Image "): Image.file(File(image!.path),
                  fit:  BoxFit.cover,
                  height: 200,
                  width: 200,
                ) ),
              ),
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height *0.2,
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  uploadImage();
                }, child: const Text(" Upload Image ")),
              ),
            ],
          )),
    );
  }
}
