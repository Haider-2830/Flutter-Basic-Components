import 'package:flutter/material.dart';

import 'hero_firsr.dart';

class HomeScreenState extends StatelessWidget {
  const HomeScreenState({super.key}) ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen '),
        //titleSpacing: 2,
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.pop(context, MaterialPageRoute(builder: (context) => const HomeScreenApp() ),);

          },
          child: Hero(
              tag: "Haider",
              child: Image.asset("assets/images/me.jpg",height: double.infinity,width: double.infinity,)
          ),
        ),
      ),
    );
  }
}
