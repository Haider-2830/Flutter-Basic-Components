import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package.dart';

//=================================== state management in flutter ======================================
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // this provider use for the multiple provider state management
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ProviderApproach(),
          ),
          ChangeNotifierProvider(
            create: (context) => Selection(),
          ),
        ],
        child: Builder(
          builder: (context) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              darkTheme: ThemeData(brightness: Brightness.dark),
              home: const MyHomePage(),
            );
          },
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // @override
  // void initState() {
  //   super.initState();
  //   final getProviderApproach = Provider.of<ProviderApproach>(context,listen: false);
  //   Timer.periodic(const Duration(seconds: 1), (timer) {
  //     getProviderApproach.setCountValue();
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    final getProviderApproach =
        Provider.of<ProviderApproach>(context, listen: false);
    final selectionProvider = Provider.of<Selection>(context, listen: false);
    // ignore: avoid_print
    print(" Again Build Unnecessary Widget ");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Tab Bar in Flutter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Consumer<ProviderApproach>(
              builder: (context, value, child) {
                return Text(
                  " Value is : ${value.count.toString()}",
                  style: const TextStyle(
                      fontSize: 50, fontWeight: FontWeight.bold),
                );
              },
            ),
            Consumer<Selection>(
              builder: (context, value, child) {
                return ActionChip(
                    backgroundColor:
                        selectionProvider.isTrue ? Colors.green : Colors.red,
                    tooltip: " Select It ",
                    elevation: selectionProvider.isTrue ? 20 : 5,
                    onPressed: () {
                      selectionProvider.changeState();
                    },
                    label: selectionProvider.isTrue
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  " Selected ",
                                  style: customStyle(),
                                ),
                                const Icon(
                                  Icons.check_circle_outline,
                                  color: Colors.white,
                                  size: 30,
                                )
                              ],
                            ),
                          )
                        : Text(
                            " Unselected ",
                            style: customStyle(),
                          ));
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            getProviderApproach.setCountValue();
          }),
    );
  }
}

// for the single provider state management
// @override
// Widget build(BuildContext context) {
//   return ChangeNotifierProvider( // this is use to convert the stateless widget into stateful widget
//       create: (BuildContext context) => ProviderApproach(), // this is predefined function "create" that is required
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Flutter Bar',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: const MyHomePage(),
//       ));
// }
