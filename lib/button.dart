import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Button',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  MyHomePageState() {
    defaultValue = dropdownItem[0];
  }
  List<String> dropdownItem = ["Haider", "Hassan", "Usama", "Haider Ali"];
  String? defaultValue;
  bool switchValue = true;
  bool checkBoxValue = true;
  String gender = " Male ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(" Button Use In Flutter "),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Switch(value: false, onChanged: null),
                Switch(
                    value: switchValue,
                    onChanged: (value) {
                      setState(() {
                        switchValue = value;
                      });
                    }),
                Checkbox(
                    value: checkBoxValue,
                    activeColor: Colors.purple,
                    onChanged: (value) {
                      setState(() {
                        checkBoxValue = value!;
                      });
                    }),
                MaterialButton(
                    onPressed: () {
                      setState(() {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                                content: Text(
                          " Button Tapped ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )));
                      });
                    },
                    color: Colors.black,
                    colorBrightness: Brightness.dark,
                    child: const Text("Material Button")),
                FilledButton(
                    onPressed: () {
                      setState(() {
                        showDialog(
                          context: context,
                          builder: (context) =>
                              const Center(child: Text(" Filled Button ")),
                        );
                      });
                    },
                    child: const Text("Filled Button")),
                RawMaterialButton(
                    onPressed: () {
                      setState(() {
                        showCupertinoDialog(
                            context: context,
                            builder: (context) =>
                                const Center(child: Text("Bottom Sheet")));
                      });
                    },
                    elevation: 20,
                    highlightColor: Colors.white,
                    fillColor: Colors.purple,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(10),
                    child: const Icon(
                      Icons.play_arrow,
                      size: 30,
                      color: Colors.white,
                    )),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => const Center(
                              child: Text("I Am The Bottom Sheet")),
                        );
                      });
                    },
                    child: const Text(
                      " Elevated Button ",
                      style: TextStyle(fontSize: 23),
                    )),
                TextButton(
                    onPressed: () {
                      setState(() {
                        showMenu(
                            context: context,
                            position: RelativeRect.fromDirectional(
                                textDirection: TextDirection.rtl,
                                start: 0,
                                top: 20,
                                end: 200,
                                bottom: 20),
                            items: dropdownItem.map((e) {
                              return PopupMenuItem(child: Text(e));
                            }).toList());
                      });
                    },
                    child: const Text(" Text Button ",
                        style: TextStyle(fontSize: 23))),
                OutlinedButton(
                    onPressed: () {
                      setState(() {
                        showLicensePage(context: context);
                      });
                    },
                    child: const Text(" OutlinedButton Button ",
                        style: TextStyle(fontSize: 23))),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: DropdownButton(
                      value: defaultValue,
                      isExpanded: true,
                      icon: const Icon(
                        Icons.arrow_drop_down_circle_outlined,
                        size: 30,
                      ),
                      hint: const Text(" Select Name "),
                      items: dropdownItem.map<DropdownMenuItem<String>>(
                          (String selectedValue) {
                        return DropdownMenuItem(
                            value: selectedValue, child: Text(selectedValue));
                      }).toList(),
                      onChanged: (setThisValue) {
                        setState(() {
                          defaultValue = setThisValue as String;
                        });
                      }),
                ),
                FloatingActionButton(
                  tooltip: "Floating Button",
                  elevation: 20,
                  onPressed: () {
                    setState(() {
                      showAboutDialog(
                          context: context,
                          applicationName: " DialogBox",
                          children: const [
                            Text("Haider Ali"),
                            Text("Hassan Ali"),
                            Text("Haider Ali"),
                          ]);
                    });
                  },
                  child: const Icon(
                    Icons.add,
                    size: 29,
                  ),
                ),
                BackButton(
                  color: Colors.red,
                  onPressed: () {},
                  style: const ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
                      elevation: MaterialStatePropertyAll(20.0)),
                ),
                CloseButton(
                  color: Colors.red,
                  onPressed: () {},
                  style: const ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
                      elevation: MaterialStatePropertyAll(20.0)),
                ),
                DrawerButton(
                  onPressed: () {
                    setState(() {});
                  },
                ),
                Radio(
                  value: "Male",
                  groupValue: gender,
                  onChanged: (value) {},
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mouse_outlined,
                      color: Colors.blue,
                      size: 45,
                    )),
              ],
            ),
          ),
        ));
  }
}
