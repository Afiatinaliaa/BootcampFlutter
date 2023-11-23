import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sanberappflutter/Tugas/Tugas-13/HomePage.dart';

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
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              margin: const EdgeInsets.only(top: 40),
              child: Text("Latihan Auth",
              style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w500,
              fontSize: 30
              ),

              )

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/img/flutter.png",
              height: 100,
              width: 100,
              ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email"
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
                    labelText: "Password"
                  ),
                ),
              ),
              TextButton(onPressed: (){

              },
              child: Text("Forgot Password"),
              ),
              Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: raisedButtonStyle,
                  child: Text("Register"),
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
                  child: Text('Login'),
                  onPressed: () async {
                    await _firebaseAuth.signInWithEmailAndPassword(
                      email: _emailController.text, password: _passwordController.text
                      ).then((value) => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Homepage())
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
  onPrimary: Colors.grey[300],
  primary: Colors.blue[300],
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
  ),
);