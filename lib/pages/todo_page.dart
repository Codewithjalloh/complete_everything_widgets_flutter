import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  // greetings message variable
  String greetingMessage = "";

  // text editing controller to access to what the user type
  TextEditingController myController = TextEditingController();

  // method that greet user method
  void greetUser() {
    String userName = myController.text;
    setState(() {
      // set the greeting string vairable to the user input text
      greetingMessage = "Hello " + userName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                greetingMessage,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                textCapitalization: TextCapitalization.words,
                controller: myController,
                style: TextStyle(
                  height: 0,
                  wordSpacing: 2,
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Type your name here..."),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: greetUser,
                child: Text("Tab Me!!"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
