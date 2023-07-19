import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
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

//https://fakestoreapi.com/products?title=This is title&price=100
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
      setState(() {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Image Selected")));
      });
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
    var url = Uri.parse(
        "https://fakestoreapi.com/products?title=This is title&price=100");
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

      setState(() {
        spinner = false;
        showDialog(
          context: context,
          builder: (context) {
            return   CupertinoAlertDialog(
              title: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check_circle_outline_outlined,color: Colors.green,size: 60,),
                  Text(" Image Uploaded "),
                ],
              ),
              actions: [
                CupertinoDialogAction(
                  child: const Text(" Back"),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
              ],
            );
          },
        );
      });
    } else {
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text(" Something Went Wrong ")));
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
          body: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.9,
            width: double.infinity,
            color: Colors.grey.shade400,
            child: InkWell(
                onTap: () {
                  getImage();
                },
                child: image == null
                    ? Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        width: 200,
                        child: const Text(
                          " Select Image ",
                          style: TextStyle(fontSize: 30),
                        ),
                      )
                    : Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(115),
                              child: Image.file(
                                File(image!.path),
                                fit: BoxFit.cover,
                                height: 230,
                                width: 230,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () {
                                    uploadImage();
                                  },
                                  child: const Text(" Upload Image ")),
                            ),
                          ],
                        ),
                      )),
          ),
        ));
  }
}
