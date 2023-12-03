import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network('https://img.freepik.com/free-vector/phone-maintenance-concept-illustration_114360-5851.jpg?w=826&t=st=1701571744~exp=1701572344~hmac=72a981fcb4741b9d50ef5024a200bc05e812f5c75f22a14b7f167f49d33473ca', width: 350, height: 300),
              SizedBox(height: 50),
              Text('Sorry, the page is under maintenance', style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}