import 'package:flutter/material.dart';
//import 'package:sanberappflutter/Tugas/Tugas-11/HomeScreen.dart';
//import 'package:sanberappflutter/Tugas/Tugas-11/LoginScreen.dart';
// import 'package:sanberappflutter/Tugas/Tugas-11/NavBar.dart';
import 'package:sanberappflutter/Tugas/Tugas-12/get_data_detail_screen.dart';
import 'package:sanberappflutter/Tugas/Tugas-12/get_data_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: Telegram(),
      //home: HomeScreen(),
      //home: LoginScreen(),
      //home: NavigationBarScreen(),
      home : GetDataDetailScreen(),
    );
  }
}

