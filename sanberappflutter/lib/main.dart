import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanberappflutter/Latihan/Latihan-2/routes/page_routes.dart';
import 'package:sanberappflutter/Tugas/Tugas-11/HomeScreen.dart';

// import 'package:sanberappflutter/Tugas/Tugas-13/Homepage.dart';
// import 'package:sanberappflutter/Tugas/Tugas-13/LoginPage.dart';
//import 'package:sanberappflutter/Tugas/Tugas-13/HomePage.dart';
import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: Telegram(),
      //home: HomeScreen(),
      //home: LoginScreen(),
      //home: NavigationBarScreen(),
      home : HomeScreen(),
      getPages: pageRouteApp.page,
    );
  }
}

