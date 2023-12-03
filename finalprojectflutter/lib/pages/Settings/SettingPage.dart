import 'package:finalprojectflutter/routes/route_name.dart';
import 'package:finalprojectflutter/widget/ForwardButton.dart';
import 'package:finalprojectflutter/widget/SettingItem.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingPage extends StatefulWidget {
  Future<void> _signOut() async{
    await FirebaseAuth.instance.signOut();
  }
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
      if (auth.currentUser != null) {
      print(auth.currentUser!.email);
    }
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Settings",
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Account',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.normal),
                    ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Image.asset('assets/img/aliaa.png', width: 70, height: 70),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Afiatin Alia',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.lightGreen[400],
                                fontWeight: FontWeight.w500
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text('afiatinalia@gmail.com',
                              style: GoogleFonts.poppins(
                                color: Colors.grey[400],
                                fontSize: 14,
                                fontWeight: FontWeight.normal)),
                          ],
                        ),
                        const Spacer(),
                        ForwardButton(onTap: () {
                          Get.toNamed(RouteName.profilePage);
                        },)
                      ],
                    ),
        
                  ),
                  const SizedBox(height: 40),
                  Text(
                    'Settings',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(height: 20),
                    SettingItems(
                      title: 'Favorite',
                      icon: CupertinoIcons.heart_circle,
                      bgColor: Colors.lightGreen.shade100,
                      iconColor: Colors.lightGreen,
                      onTap: (){},
                    ),
                    const SizedBox(height: 20),
                    SettingItems(
                      title: 'Voucher',
                      icon: CupertinoIcons.tickets,
                      bgColor: Colors.lightGreen.shade100,
                      iconColor: Colors.lightGreen,
                      onTap: (){},
                    ),
                    const SizedBox(height: 20),
                    SettingItems(
                      title: 'Freshia Affiliate',
                      icon: CupertinoIcons.rectangle_stack_person_crop,
                      bgColor: Colors.lightGreen.shade100,
                      iconColor: Colors.lightGreen,
                      onTap: (){},
                    ),
                    const SizedBox(height: 20),
                    SettingItems(
                      title: 'FAQs',
                      icon: CupertinoIcons.ellipsis_circle,
                      bgColor: Colors.lightGreen.shade100,
                      iconColor: Colors.lightGreen,
                      onTap: (){},
                    ),
                    const SizedBox(height: 20),
                    SettingItems(
                      title: 'Help Center',
                      icon: CupertinoIcons.headphones,
                      bgColor: Colors.lightGreen.shade100,
                      iconColor: Colors.lightGreen,
                      onTap: (){},
                    ),
                    const SizedBox(height: 20),
                    Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                    ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreen[400],
                          side: BorderSide.none, 
                          shape: StadiumBorder() ,
                          ),
                      onPressed: () {
                      Get.offNamed(RouteName.loginPage);
                  },
                    child: Text('Logout', style: GoogleFonts.poppins(color: Colors.white),),
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

