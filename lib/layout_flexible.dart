import 'package:flutter/material.dart';

void main() {
  runApp(const LayoutExpansible());
}

class LayoutExpansible extends StatelessWidget {
  const LayoutExpansible({super.key});

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
          children: [
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.red,
              )
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.green,
              )
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.blue,
              )
            ),
          ],
        )
        // body: Column(
        //   children: [
        //     Flexible(
        //       flex: 2,
        //       child: Container(
        //         color: Colors.red,
        //       )
        //     ),
        //     Flexible(
        //       flex: 1,
        //       child: Container(
        //         color: Colors.green,
        //       )
        //     ),
        //     Flexible(
        //       flex: 1,
        //       child: Container(
        //         color: Colors.blue,
        //       )
        //     ),
        //   ],
        // )
      ),
    );
  }
}