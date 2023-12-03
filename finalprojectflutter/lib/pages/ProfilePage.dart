import 'package:finalprojectflutter/widget/ProfileItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: GoogleFonts.poppins(fontSize: 16),),
        leading: IconButton(
          onPressed: () =>
            Get.back(),
            //Get.offNamed(RouteName.landingPage);
          icon: const Icon(CupertinoIcons.chevron_back, color: Colors.lightGreen),),
          leadingWidth: 80,
          backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(image: AssetImage('assets/img/aliaa.png'))),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.lightGreen.shade400
                              ),
                              child: const Icon(
                                CupertinoIcons.camera,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    itemProfile('Name', 'Afiatin Alia', CupertinoIcons.person_alt_circle),
                    const SizedBox(height: 20),
                    itemProfile('Phone Number', '628101155123', CupertinoIcons.phone_circle),
                    const SizedBox(height: 20),
                    itemProfile('Gender', 'Woman', CupertinoIcons.person_crop_circle_badge_checkmark),
                    const SizedBox(height: 20),
                    itemProfile('Email', 'afiatinalia@gmail.com', CupertinoIcons.mail),
                    const SizedBox(height: 20),
                    itemProfile('Change Password', '', CupertinoIcons.lock_circle),
                  ],
                ),
              ),
            ),
          );
        }
      }

      