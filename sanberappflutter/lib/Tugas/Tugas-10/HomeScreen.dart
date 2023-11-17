import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
                IconButton(onPressed: (){}, icon: Icon(Icons.extension))
              ],
            ),
            SizedBox(height: 37),
            Text.rich(
              TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: "Welcome, \n",
                  style: TextStyle(color: Colors.blue[300]),
                ),
                TextSpan(
                  text: "Alia, \n",
                  style: TextStyle(color: Colors.blue[900]),
                ),
              ],
              ),
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(height: 20),
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
              SizedBox(height: 10),
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
              )

          ],
        ),
        ),
      );
  }
}


final countries = ["Tokyo", "Berlin", "Roma", "Monas"];