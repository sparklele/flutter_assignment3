import 'package:flutter/material.dart';
import 'package:flutter_assignment3/profile.dart';

import 'package:flutter_assignment3/Search.dart';
import 'package:flutter_assignment3/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return assignmentWk13();
  }
}

class assignmentWk13 extends StatefulWidget {
  const assignmentWk13({super.key});

  @override
  State<assignmentWk13> createState() => _assignmentWk13State();
}

class _assignmentWk13State extends State<assignmentWk13> {
  int _currentIndex = 0;
  List places = [home(),Search(),profile()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purpleAccent,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  "Creative App",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
        body: places[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items:
          const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ],
          selectedItemColor: Colors.purpleAccent,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}