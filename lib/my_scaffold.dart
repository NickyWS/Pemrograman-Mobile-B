import 'package:flutter/material.dart';

void main() {
  runApp(const MyScaffold());
}

class MyScaffold extends StatelessWidget{
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scaffold',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar'),
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: Text(
                  "Menu Drawer",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                // onTap: () {},
              ),
              const ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                // onTap: () {},
              ),
            ],
          ),
        ),

        body: const Center(
          child: Text(
            "Ini Body (Konten utama)", 
            style: TextStyle(fontSize: 20),
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}