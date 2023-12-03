import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({Key? key, required  this.text, required this.press})
      : super(key : key);
      final String text;
      final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 16, 
              color: Colors.lightGreen[700],
              fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap : press,
                child: Text('See more', style: GoogleFonts.poppins(fontSize: 12, color: Colors.lightGreen[200]),)),
        ],
      ),
    );
  }
}
