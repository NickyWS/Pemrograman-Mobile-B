import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contoh Stateful Widget'),
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Text(
            'Counter: $_counter',
            style: const TextStyle(fontSize: 24),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 16.0, right: 16.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: _decrementCounter,
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                child: const Icon(Icons.remove),
              ),
              const SizedBox(width: 12),
              FloatingActionButton(
                onPressed: _resetCounter,
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                child: const Icon(Icons.autorenew),
              ),
              const SizedBox(width: 12),
              FloatingActionButton(
                onPressed: _incrementCounter,
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
