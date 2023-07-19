import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SecondScreen extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var input ;
  // ignore: prefer_typing_uninitialized_variables
  var input2 ;
  SecondScreen(this.input,this.input2 , {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:Text("Profile Screen")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            CircleAvatar(
              radius: 50,
              //backgroundColor: Colors.blue,
              child: Image.asset("assets/images/b.jpg"),
            ),
           const SizedBox(height: 30,),
            Text(
              " E-mail : $input \n Password : $input2 ",
              style:const TextStyle(
                color: Colors.grey,
                fontSize: 17,
              ),
            ),
             const SizedBox(height: 20,),
            ElevatedButton(onPressed:(){

            }, child:const Text("LogOut"))
          ],
        ),
      ),
    );
  }
}
