import 'package:finalprojectflutter/widget/ForwardButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingItems extends StatelessWidget {
  final String title;
  final Color bgColor;
  final Color iconColor;
  final IconData icon;
  final Function() onTap;
  
  const SettingItems({
    super.key,
    required this.title,
    required this.bgColor,
    required this.iconColor,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bgColor,
            ),
            child: Icon(
              icon,
              color: iconColor),
          ),
          const SizedBox(width: 20),
          Text(
            title, 
            style: GoogleFonts.poppins(
              fontSize: 16, 
              color: Colors.black, 
              fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              ForwardButton(onTap: onTap,),
        ],
      ),
    );
  }
}

