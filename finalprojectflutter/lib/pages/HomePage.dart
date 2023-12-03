import 'package:finalprojectflutter/widget/Banner.dart';
import 'package:finalprojectflutter/widget/category.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 140,
                  width: double.infinity,
                  color: Colors.lightGreen[400],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/img/aliaa.png')),
                                      //NetworkImage(
                                          //'https://riaupos.co/thumb/2755-jenni-blackpink.jpg')),
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                      color: Colors.white,
                                      style: BorderStyle.solid,
                                      width: 2),
                                ),
                              ),
                              SizedBox(width: 15),
                              Text(
                                'Hello Alia,\nWelcome back!',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              )
                            ],
                          ),
                          Container(
                              alignment: Alignment.topRight,
                              child: Icon(Icons.notifications_active,
                                  color: Colors.white, size: 24)),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F5F7),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextField(
                          cursorHeight: 20,
                          autofocus: false,
                          decoration: InputDecoration(
                            hintText: 'Cari produk..',
                            hintStyle: GoogleFonts.poppins(fontSize: 12),
                            prefixIcon: Icon(Icons.search_rounded),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1),
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Top Categories',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.lightGreen[700],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Category(
                                  imagePath: 'assets/img/sayur.png',
                                  title: 'Vegetables'),
                              Category(
                                  imagePath: 'assets/img/buah.png',
                                  title: 'Fruits'),
                              Category(
                                  imagePath: 'assets/img/seafood.png',
                                  title: 'Seafoods'),
                              Category(
                                  imagePath: 'assets/img/unggas.png',
                                  title: 'Poultry')
                            ],
                          ),
                          Row(
                            children: [
                              Category(
                                  imagePath: 'assets/img/mie.png',
                                  title: 'Noodles'),
                              Category(
                                  imagePath: 'assets/img/tepung.png',
                                  title: 'Rice'),
                              Category(
                                  imagePath: 'assets/img/makanan-kaleng.png',
                                  title: 'Instant'),
                              Category(
                                  imagePath: 'assets/img/others.png',
                                  title: 'Others')
                            ],
                          )
                        ],
                      ),
                    ),
                    Banners(),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      //bottomNavigationBar: CustomNavbar(selectedMenu: MenuState.home),
    );
  }
}