import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatelessWidget{
  final String imagePath;
  final String title;
  const Category({Key? key, required  this.imagePath, required this.title})
      : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: 50,
          height: 50,
          child: Column(
            children: [
              Image.asset(
                imagePath,
                width: 23
                ),
                SizedBox(
                  height: 15
                  ),
                  Text(title,
                  style: GoogleFonts.poppins(
                    fontSize: 8, 
                    color: Colors.lightGreen[700], 
                    fontWeight: FontWeight.bold),
                  ),
                ],
          ),
        ),
      ),
    );
  }
}