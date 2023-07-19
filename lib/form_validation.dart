import 'package:flutter/material.dart';
import 'package:form_validation/form_validation.dart';

// ======================================== Form Validation in flutter Widget ===========================================
// this is the custom method to add validator in code
// validator: (value) {
//   if (value == null || value.isEmpty) {
//     return ' Required ';
//   }
//   return null;
// },
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
  final formKey = GlobalKey<FormState>();
  bool password = true;
  TextEditingController email1 = TextEditingController();
  TextEditingController password1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(" Form in Flutter "),
          centerTitle: true,
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
        body: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(20, 80, 20, 10),
            margin: const EdgeInsets.all(20),
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: ListView(
                children: [
                  TextFormField(
                    // This is the validation by using the pkg that use in flutter
                    validator: (value) {
                      final validator = Validator(
                        validators: [
                          const RequiredValidator(),
                          const EmailValidator()
                        ],
                      );
                      return validator.validate(
                        label: " Email",
                        value: value,
                      );
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    autocorrect: true,
                    controller: email1,
                    keyboardType: TextInputType.emailAddress,
                    enableSuggestions: true,
                    decoration: const InputDecoration(
                        labelText: " Email ",
                        labelStyle: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.blue,
                              width: 2,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        contentPadding: EdgeInsets.all(5),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.blue,
                          size: 24,
                        )),
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    validator: (value) {
                      final validator0 = Validator(validators:const [
                        RequiredValidator(),
                        MinLengthValidator(length: 8),
                        MaxLengthValidator(length: 16)
                      ]) ;
                      return validator0.validate(label: "Password", value: value) ;
                    },
                    autocorrect: true,
                    controller: password1,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: password,
                    decoration: InputDecoration(
                        labelText: " Password ",
                        labelStyle: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(color: Colors.blue,width: 2)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(color: Colors.blue,width: 2)
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.remove_red_eye_outlined,color: password ? Colors.grey : Colors.blue,),
                          onPressed: (){
                            setState(() {
                              if(password){
                                password = false ;
                              }
                              else{
                                password = true ;
                              }
                            });
                          },
                        ),
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          color: Colors.blue,
                          size: 24,
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String userEmail = email1.text.toString();
                      String userPassword = password1.text.toString();
                      if (formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Email : $userEmail \nPassword : $userPassword')),
                        );
                      }
                    },
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
