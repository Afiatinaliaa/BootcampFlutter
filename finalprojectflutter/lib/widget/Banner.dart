import 'package:finalprojectflutter/component/SectionTitle.dart';
import 'package:flutter/material.dart';

class Banners extends StatelessWidget {
  const Banners({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Recommended for You',
          press: () {},
        ),
        SizedBox(
          height: 20
          ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BannerCard(
                image: 'assets/img/vegetable.jpg',
                category: 'Vegetables',
                numOfBrands: 18,
                press: () {},
              ),
              BannerCard(
                image: 'assets/img/fruit.jpg',
                category: 'Fruits',
                numOfBrands: 40,
                press: () {},
              ),
              BannerCard(
                image: 'assets/img/meat.jpg',
                category: 'Meats',
                numOfBrands: 10,
                press: () {},
              ),
              BannerCard(
                image: 'assets/img/pasta.jpg',
                category: 'Noodles',
                numOfBrands: 50,
                press: () {},
              ),
              SizedBox(width: 20),
            ],
          ),
        )
      ],
    );
  }
}

class BannerCard extends StatelessWidget {
  const BannerCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: SizedBox(
        width: 242,
        height: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover
                ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF343434).withOpacity(0.4),
                      Color(0xFF343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Text.rich(
                    TextSpan(style: TextStyle(color: Colors.white), 
                  children: [
                  TextSpan(
                    text: '$category \n',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: '$numOfBrands Variant')
                ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
