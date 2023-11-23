import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sanberappflutter/Tugas/Tugas-13/LoginPage.dart';
import 'package:sanberappflutter/Tugas/Tugas-9/DrawerScreen.dart';

class Homepage extends StatelessWidget {
  Future<void> _signOut() async{
    await FirebaseAuth.instance.signOut();
  }
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    if (auth.currentUser != null) {
      print(auth.currentUser!.email);
    }
    return Scaffold(
      appBar: AppBar(title: (Text('Home')),
      actions: <Widget>[
        Padding(
        padding: const EdgeInsets.all(8.0), 
        child: Icon(Icons.search),
        )
      ]
      ),
      drawer: DrawerScreen(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
                IconButton(onPressed: (){}, icon: Icon(Icons.extension))
              ],
            ),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: "Welcome, \n",
                  style: TextStyle(color: Colors.blue[300]),
                ),
                TextSpan(
                  text: auth.currentUser!.email,
                  style: TextStyle(color: Colors.blue[900]),
                ),
              ],
              ),
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  size: 18
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)),
                  hintText: "Search"
                ),
              ),
              SizedBox(
                height: 20
                ),
              Text("Recommended place", 
                style: TextStyle(
                  fontWeight: FontWeight.w600, 
                  fontSize: 20),
                  ),
              SizedBox(
                height: 250,
                child: GridView.count(
                  padding: EdgeInsets.all(5),
                  crossAxisCount: 2,
                  childAspectRatio: 3 /2,
                  crossAxisSpacing: 10,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    for(var country in countries)
                    Image.asset(
                      "assets/img/$country.png"
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                  child: ElevatedButton(
                onPressed: () {
                    _signOut().then((value) => Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(
                      builder: (context) => Loginpage())));
                  },
                  child: Text('Logout'),
                ),
              )
          ],
        ),
        ),
      );
  }
}


final countries = ["Tokyo", "Berlin", "Roma", "Monas"];