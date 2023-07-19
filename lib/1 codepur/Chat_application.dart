// ignore: file_names
import 'package:flutter/material.dart';

import 'chat_second.dart';


main() => runApp(const ChatApp());

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});
  @override
  State<StatefulWidget> createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  var userInput = TextEditingController();
  final List<Message> _message = <Message> [];
  void clearInput(String text) {
    userInput.clear();
    Message message = Message(text: text);
    setState(() {
       _message.insert(0,message);
    });
  ;
  }
  // This is the first widget that display the text-field on the screen
  Widget textField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(6, 10, 6, 15),
          child: TextField(
            controller: userInput,
            // onSubmitted: clear,
            decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.message_outlined,
                  color: Colors.orange,
                  size: 30,
                ),
                hintText: " Message ",
                suffixIcon: IconButton(
                    onPressed: () {
                      clearInput(userInput.text.toString());
                    },
                    icon: const Icon(
                      Icons.send_outlined,
                      color: Colors.orange,
                      size: 30,
                    )),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.orange, width: 2),
                  borderRadius: BorderRadius.circular(40),
                )),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Chat Application",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // ListView.builder(
          //   padding:const EdgeInsets.all(7),
          //   reverse: true,
          //   itemBuilder: (context, index) => _message[index],
          //   itemCount: _message.length,
          // ),
          textField(),
        ],
      ),
    );
  }
}

//
