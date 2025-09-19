import 'package:flutter/material.dart';

void main() {
  runApp(const LayoutContainer());
}

class LayoutContainer extends StatelessWidget {
  const LayoutContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contoh Layout',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Layout App'),
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 1.0),
          margin: const EdgeInsets.symmetric(horizontal: 30.0),
          alignment: Alignment.bottomRight,
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.teal, width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.amber[200],
          ),
          child: Text(
            "Hello, Flutter is Rocks",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          ),
        ),
      ),
    );
  }
}