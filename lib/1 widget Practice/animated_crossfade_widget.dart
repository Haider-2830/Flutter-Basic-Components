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
              AnimatedCrossFade(
                duration: const Duration(seconds: 2),
                firstChild: Container(
                  height: 200,
                  width: 200,
                  color: Colors.purple,
                ),
                //firstCurve: Curves.bounceIn,
                secondChild: Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                ),
                // secondCurve: Curves.bounceInOut,
                crossFadeState: animation
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (animation) {
                        animation = false;
                      } else {
                        animation = true;
                      }
                    });
                  },
                  child: const Text(" Click For Animation"))
            ],
          ),
        ));
  }
}
