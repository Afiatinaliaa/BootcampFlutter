import 'package:finalprojectflutter/pages/ChatPage.dart';
import 'package:finalprojectflutter/pages/HomePage.dart';
import 'package:finalprojectflutter/pages/Recipe/RecipePage.dart';
import 'package:finalprojectflutter/pages/Settings/SettingPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int myCurrentIndex = 0;
  List pages = const[
    Homepage(),
    RecipePage(),
    ChatPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            myCurrentIndex = index;
          });
        },
        backgroundColor: Colors.white,
        selectedIndex: myCurrentIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home_outlined),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.food_bank_outlined),
            label: 'Recipes',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(CupertinoIcons.chat_bubble_2),
            ),
            label: 'Chat',
          ),
          NavigationDestination(
            icon: Icon(CupertinoIcons.gear_big),
            label: 'Setting',
          ),
        ],
      ),
      body: pages[myCurrentIndex],
    );
  }
}