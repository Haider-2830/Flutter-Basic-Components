import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ProviderApp());
}

class ProviderApp extends StatelessWidget {
  const ProviderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: " Title of App ",
      home: FirstScreen(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

// ignore: must_be_immutable
class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});
  ValueNotifier<int> startingValue = ValueNotifier<int>(0);
  ValueNotifier<bool> enablePassword = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print(" ReBuild ");
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Title Here "),
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ValueListenableBuilder(
              valueListenable: enablePassword,
              builder: (context, value, child) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextFormField(
                    obscureText: enablePassword.value, // value true by default
                    decoration: InputDecoration(
                        labelText: " Password ",
                        prefixIcon: const Icon(
                          Icons.lock_outlined,
                          size: 25,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              enablePassword.value = !enablePassword.value;
                            },
                            icon: enablePassword.value
                                ? const Icon(
                                    Icons.visibility_off,
                                    color: Colors.grey,
                                    size: 20,
                                  )
                                : const Icon(
                                    Icons.visibility,
                                    size: 20,
                                  ))),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: ValueListenableBuilder(
              valueListenable: startingValue,
              builder: (context, value, child) {
                return Text(
                  value.toString(),
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.add,
            size: 25,
            color: Colors.white,
          ),
          onPressed: () {
            startingValue.value++;
          }),
    );
  }
}
