import 'package:flutter/material.dart';

void main() {
  runApp(const AnimationApp());
}

class AnimationApp extends StatelessWidget {
  const AnimationApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Animation Opacity",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const AnimationPage(),
    );
  }
}

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});
  @override
  State<AnimationPage> createState() => AnimationPageState();
}

class AnimationPageState extends State<AnimationPage> {
  bool animation = true;
  var opacityValue = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Animation Opacity",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              duration: const Duration(seconds: 2),
              opacity: opacityValue,
           //   curve: Curves.bounceInOut,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.purple,
                ),
              ),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  if (animation) {
                    opacityValue = 0.0;
                    animation = false;
                  } else {
                    opacityValue = 1.0;
                    animation = true;
                  }
                  setState(() {

                  });
                },
                child: const Text(" Click Me For Animation"))
          ],
        ),
      ),
    );
  }
}
