import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //variable
  int _counter = 0;

  //method
  void _incrementCounter() {
    // setstate rebuilds the widgets
    setState(() {
      // the value will change depending on the state(new value in example)
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [Colors.blueAccent, Colors.purpleAccent])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You pushed the button this many times: "),
              Text(
                _counter.toString(),
                style: TextStyle(fontSize: 50),
              ),
              ElevatedButton(
                onPressed: _incrementCounter,
                child: Text("Button"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
