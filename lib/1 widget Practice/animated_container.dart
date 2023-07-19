import 'package:flutter/material.dart';

void main() {
  runApp(const AnimatedContainerApp());
}

class AnimatedContainerApp extends StatelessWidget {
  const AnimatedContainerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated Container',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const PageScreenOfAnimatedContainer(),
    );
  }
}

class PageScreenOfAnimatedContainer extends StatefulWidget {
  const PageScreenOfAnimatedContainer({super.key});
  @override
  State<PageScreenOfAnimatedContainer> createState() =>
      PageScreenOfAnimatedContainerState();
}

class PageScreenOfAnimatedContainerState
    extends State<PageScreenOfAnimatedContainer> {
  var height2 = 180.0;
  var width2 = 180.0;
  bool animation = true;

  Decoration containerDecoration = BoxDecoration(
    color: Colors.red,
    border: Border.all(color: Colors.black, width: 2),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 3,
        elevation: 10,
        title: const Text(
          'Animated Container',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // This is the animated container use for animation
              AnimatedContainer(
                duration: const Duration(seconds: 3),
                height: height2,
                width: width2,
                curve: Curves.easeInOut,
                //alignment: Alignment.centerLeft,
                decoration: containerDecoration,
              ),
              ElevatedButton(
                onPressed: () {
                  if (animation) {
                    height2 = 300;
                    width2 = 300;
                    containerDecoration = BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        // shape: BoxShape.circle,
                        color: Colors.red);
                    animation = false;
                  } else {
                    height2 = 180;
                    width2 = 180;
                    animation = true;
                    containerDecoration = BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        // shape: BoxShape.rectangle,
                        color: Colors.purple);
                  }
                  // This function is the responsible of changing animation
                  setState(() {});
                },
                child: const Text("Press Me For Animation"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
