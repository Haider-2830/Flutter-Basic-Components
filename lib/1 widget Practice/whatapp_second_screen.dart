import 'package:flutter/material.dart';

import 'maping_list_widget.dart';

class WhatAppSecondScreen extends StatefulWidget {
  const WhatAppSecondScreen({super.key});

  @override
  State<WhatAppSecondScreen> createState() => WhatAppSecondScreenState();
}

class WhatAppSecondScreenState extends State<WhatAppSecondScreen> {
  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Second WhatApp Screen"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.red.shade600,
          Colors.deepOrange.shade400,
          Colors.purple.shade800,
        ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Card(
                margin: EdgeInsets.all(6),
                  elevation: 15,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "This is the Detailed screen that show messages of users and fetch data from API's ",
                      style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24


                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreenApp(),
                        ));
                  },
                  child: SizedBox(
                    height: 100,
                    width: 200,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          Icon(Icons.arrow_back),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              " Click To Back ...!",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                            ),
                          )
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
