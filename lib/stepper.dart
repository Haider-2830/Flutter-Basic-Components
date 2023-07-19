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
      title: 'Flutter Bar',
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
  int currentStep = 0;
  final List<Step> _steps = [
    const Step(
        title: Text(" First "),
        content: Text(" This is content 1 "),
        label: Text(" Label 1 "),
        subtitle: Text(" SubTitle 1 "),
        isActive: true,
        state: StepState.complete),
    const Step(
        title: Text(" Second "),
        content: Text(" This is content 2 "),
        label: Text(" Label 2 "),
        subtitle: Text(" SubTitle 2 "),
        isActive: true,
        state: StepState.complete),
    const Step(
        title: Text(" Third "),
        content: Text(" This is content 3 "),
        label: Text(" Label 3 "),
        subtitle: Text(" SubTitle 3 "),
        isActive: true,
        state: StepState.error),
    const Step(
        title: Text(" Fourth "),
        content: Text(" This is content 4 "),
        label: Text(" Label 4 "),
        subtitle: Text(" SubTitle 4 "),
        isActive: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Bar Use In Flutter "),
          actions: [
            PopupMenuButton(
                tooltip: " Menu Button ",
                elevation: 40,
                icon: const Icon(Icons.settings),
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: ListTile(
                        title: const Text(
                          " Setting ",
                          style: TextStyle(fontSize: 18),
                        ),
                        onTap: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        leading: const Icon(Icons.settings),
                      ),
                    ),
                    PopupMenuItem(
                      child: ListTile(
                        title: const Text(
                          " Login ",
                          style: TextStyle(fontSize: 18),
                        ),
                        onTap: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        leading: const Icon(Icons.account_circle_outlined),
                      ),
                    ),
                    PopupMenuItem(
                      child: ListTile(
                        title: const Text(
                          " Alarm ",
                          style: TextStyle(fontSize: 18),
                        ),
                        onTap: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        leading: const Icon(Icons.add_alarm_sharp),
                      ),
                    ),
                    PopupMenuItem(
                      child: ListTile(
                        title: const Text(
                          " Facebook ",
                          style: TextStyle(fontSize: 18),
                        ),
                        onTap: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                        leading: const Icon(Icons.facebook_sharp),
                      ),
                    )
                  ];
                }),
          ],
        ),
        drawer: Container(
          margin: const EdgeInsets.fromLTRB(10, 40, 0, 10),
          child: Drawer(
            width: 250,
            backgroundColor: Colors.white,
            elevation: 50,
            shadowColor: Colors.black,
            child: ListView(
              children: [
                const UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                    accountName: Text(" Haider "),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text(
                        "HA",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    accountEmail: Text(" haider@gmail.com ")),
                ListTile(
                  title: const Text(
                    " Message ",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  leading: const Icon(Icons.message),
                ),
                ListTile(
                  title: const Text(
                    " Login ",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  leading: const Icon(Icons.account_circle_outlined),
                ),
                ListTile(
                  title: const Text(
                    " Alarm ",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  leading: const Icon(Icons.add_alarm_sharp),
                ),
                ListTile(
                  title: const Text(
                    " Facebook ",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  leading: const Icon(Icons.facebook_sharp),
                ),
                ListTile(
                  title: const Text(
                    " Setting ",
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  leading: const Icon(Icons.settings),
                ),
                ListTile(
                  title: const Text(" First "),
                  subtitle: const Text(" Write At Thing As a Body Here "),
                  tileColor: Colors.white,
                  contentPadding: const EdgeInsets.all(5),
                  onTap: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  titleAlignment: ListTileTitleAlignment.center,
                  trailing: const Icon(Icons.add_a_photo_outlined),
                  leading: const Icon(
                    Icons.account_circle_outlined,
                    size: 30,
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            tooltip: " Floating Button",
            elevation: 40,
            backgroundColor: Colors.purple,
            child: const Icon(Icons.add)),
        body: Center(
          child: Stepper(
            steps: _steps,
            currentStep: currentStep,
            elevation: 30,
            connectorColor: const MaterialStatePropertyAll(Colors.red),
            connectorThickness: 3,
            onStepTapped: (step) {
              setState(() {
                currentStep = step;
              });
            },
            onStepCancel: () {
              setState(() {
                currentStep > 0
                    ? currentStep = currentStep - 1
                    : currentStep = 0;
              });
            },
            onStepContinue: () {
              setState(() {
                currentStep < _steps.length - 1
                    ?currentStep = currentStep + 1
                    :  currentStep = 0;
              });
            },
            type: StepperType.vertical,
          ),
        ));
  }
}
