import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

itemProfile(String title, String subtitle, IconData iconData,){
        return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 2),
                    color: Colors.black.withOpacity(.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: ListTile(
                title: Text(title, style: GoogleFonts.poppins(fontSize: 14)),
                subtitle: Text(subtitle, style: GoogleFonts.poppins(fontSize: 12)),
                leading: Icon(iconData, color: Colors.lightGreen, size: 30),
                trailing: Icon(CupertinoIcons.forward, color: Colors.grey[300]),
                tileColor: Colors.white,
                selectedColor: Colors.lightGreen,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            );
          }