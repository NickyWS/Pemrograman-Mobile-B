import 'package:flutter/material.dart';

void main() {
  runApp(const LayoutRow());
}

class LayoutRow extends StatelessWidget {
  const LayoutRow({super.key});

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
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 100,
              height: 80,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 120,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ], 
        ),
      ),
    );
  }
}