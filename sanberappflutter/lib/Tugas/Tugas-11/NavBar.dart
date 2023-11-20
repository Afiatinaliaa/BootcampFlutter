import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sanberappflutter/Tugas/Tugas-11/HomeScreen.dart';
import 'package:sanberappflutter/Tugas/Tugas-11/AccountScreen.dart';
import 'package:sanberappflutter/Tugas/Tugas-11/SearchScreen.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int myCurrentIndex = 0;
  List pages = const[
    HomeScreen(),
    SearchScreen(),
    AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: 
        BottomNavigationBar(
          currentIndex: myCurrentIndex,
          onTap: (index){
            setState(() {
              myCurrentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded), label: "Account"),
        ],
      ),
      body: pages[myCurrentIndex],
    );
  }
}