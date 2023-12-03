import 'package:finalprojectflutter/pages/HomePage.dart';
import 'package:finalprojectflutter/pages/LandingPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatefulWidget {

  @override
  _LoginpageState createState() =>  _LoginpageState();
}

class  _LoginpageState extends State<Loginpage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  registerSubmit() async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: _emailController.text.toString().trim(),
        password: _passwordController.text);
    } catch (e) {
      print(e);
      SnackBar(content: Text(e.toString()));
    }
  }

  LoginSubmit() async {
    try {
      _firebaseAuth
        .signInWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text)
        .then((value) => Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Homepage())));
    } catch (e) {
      print(e);
      SnackBar(content: Text(e.toString()));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset("assets/img/logo2.png",
              height: 100,
              width: 100,
              ),
              ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              margin: const EdgeInsets.only(top: 20),
              child: Text("Welcome Freshers",
              style: GoogleFonts.poppins(
              color: Colors.black87,
              fontWeight: FontWeight.w500,
              fontSize: 25,
              ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 5),
              margin: const EdgeInsets.only(top: 5),
              child: Text("Please log in with valid credentials",
              style: GoogleFonts.poppins(
              color: Colors.grey[500],
              fontSize: 14
              ),
              ),
            ),
            SizedBox(height: 32),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                ),
              ),
              TextButton(onPressed: (){

              },
              child: Text("Forgot Password", style: GoogleFonts.poppins(fontSize: 14)),
              ),
              Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: raisedButtonStyle,
                  child: Text("Register", style: GoogleFonts.poppins(fontSize: 18)),
                  onPressed: () async{
                    await _firebaseAuth.createUserWithEmailAndPassword(
                      email: _emailController.text, password: _passwordController.text);
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: raisedButtonStyle,
                  child: Text('Login', style: GoogleFonts.poppins(fontSize: 18),),
                  onPressed: () async {
                    await _firebaseAuth.signInWithEmailAndPassword(
                      email: _emailController.text, password: _passwordController.text
                      ).then((value) => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => LandingPage())
                      ));
                  }
                )
              ),
              ],
            ),
      )
    );
  }
}


final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white,
  primary: Colors.lightGreen[300],
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
  ),
);