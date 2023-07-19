
import 'package:flutter/material.dart';

void main(){
  runApp(HaiderApp());
}
// This is the first class that use for the App View
class HaiderApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       title: " Haider Customize App Design ",
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
       primarySwatch: Colors.blue,
       ),
  home: HomeScreen(),
     ) ;
  }
}
// This is the Second class that use for the Page View
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text('This is the Bar Title '),
        //titleSpacing: 2,
      ),
     body: Center(
       child: Container(
         height: 200,
         width: 200,
         color: Colors.red.shade100,
         child: const Center(child: Text('Container ' ,style: TextStyle(
           fontSize: 25,
           color: Colors.red,
           fontWeight: FontWeight.w800
         ),)),
       ),
     ),
   ) ;
  }

}