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
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            bodyLarge: TextStyle(
                fontSize: 30, color: Colors.red, fontWeight: FontWeight.w800),
          )),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var eMail = TextEditingController();
    var password = TextEditingController();
    //+  var time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: const [
              Icon(Icons.login_outlined),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Login'),
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //  Text('$time',style: Theme.of(context).textTheme.bodyLarge,),
            Card(
              elevation: 15,
              margin: const EdgeInsets.all(20),
              child: TextField(
                controller: eMail,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(4)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(4)),
                  contentPadding: const EdgeInsets.all(10),
                  hintText: " Email",
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 15,
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(4)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(4)),
                  contentPadding: const EdgeInsets.all(10),
                  hintText: " Password ",
                  prefixIcon: const Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.fromLTRB(20, 8, 20, 10),
              elevation: 15,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Date-of-Birth',
                  prefixIcon: IconButton(
                      onPressed: () async {
                        DateTime ? dateOfBirth = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2025),
                        ) ;
                        if(dateOfBirth != null){
                          // ignore: avoid_print
                          print(dateOfBirth);
                        }
                      },
                      icon: const Icon(
                        Icons.account_box_outlined,
                        color: Colors.blue,
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(4)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(4)),
                  contentPadding: const EdgeInsets.all(10),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  String mail = eMail.text.toString();
                  String passWord = password.text.toString();
                  // ignore: avoid_print
                  print(" Email is : $mail \n Password is : $passWord");
                },
                child: const Text('Login'))
          ],
        ));
  }
}
