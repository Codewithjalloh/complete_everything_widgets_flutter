import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // variable
  int _counter = 0;

  // method increment
  void _increase() {
    setState(() {
      _counter++;
    });
  }

  // method decrement
  void _decrease() {
    setState(() {
      _counter--;
    });
  }

  // reset
  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 200),
            child: Column(
              children: [
                Text("You pressed the button"),
                Text(
                  _counter.toString(),
                  style: TextStyle(fontSize: 48),
                ),
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        onPressed: _increase,
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.green)),
                        child: Text(
                          "Increse",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _decrease,
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.red)),
                        child: Text(
                          "Decrease",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _reset,
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.yellow)),
                        child: Text(
                          "Reset",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
