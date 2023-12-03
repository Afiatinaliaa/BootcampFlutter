import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../routes/route_name.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key :key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  void _onIntroEnd(context) {
    Get.toNamed(RouteName.loginPage);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 16.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
          ),
        ),
      ),
        pages: [
          PageViewModel(
            title: 'Easy to Shop',
            body: 'Providing convenience in shopping for premium ingredients',
            image: Image.network('https://img.freepik.com/free-vector/young-man-shopping-supermarket-department-store_40876-2628.jpg?w=826&t=st=1701570965~exp=1701571565~hmac=4e1518816216aa17c61260758c13d688afc225cc39432037bf3c65858afff84a',
            //image: Image.network('https://img.freepik.com/free-vector/online-shopping-concept-illustration_114360-1084.jpg?w=1380&t=st=1701184913~exp=1701185513~hmac=ba28fc903661aebeced4162985e97f6f621ec1a230026d0dfd918009636f9e94',
            width: 350,
            height: 300,
          ),
            decoration: pageDecoration
          ),
          PageViewModel(
            title: 'Premium Quality',
            body: 'The ingredients provided are fresh and premium ingredients',
            image: Image.network('https://img.freepik.com/free-vector/fruit-vegetables-background_23-2148488323.jpg?w=1380&t=st=1701569627~exp=1701570227~hmac=64088af86e57bcd9f1816b44231ff4dad6122b870e53c39a9b48a223aa6738b7',
            // image: Image.network('https://img.freepik.com/free-vector/online-wishes-list-concept-illustration_114360-3900.jpg?w=826&t=st=1701182471~exp=1701183071~hmac=ad091d473a55159d3c9235a88edb5169ef7539ba8a47a9c6ccc94dc087ea459f',
            width: 350,
            height: 300,
            ),
            decoration: pageDecoration.copyWith(
              contentMargin: const EdgeInsets.symmetric(horizontal: 16),
              fullScreen: false,
              bodyFlex: 2,
              imageFlex: 3,
              safeArea: 100,
            )
          ),
          PageViewModel(
            title: 'Create the Best Dishes',
            body: 'Easily create special dishes with easy shopping and recipe features',
            image: Image.network('https://img.freepik.com/free-vector/beautiful-housewife-is-cooking-kitchen-illustration-vector-cartoon-animation-design_40876-2541.jpg?w=826&t=st=1701570933~exp=1701571533~hmac=f1f446585f3cada9da67ff1fd41476c4d5e8cd6612fc6e970209f0aecbd1ff98',
            //image: Image.network('https://img.freepik.com/free-vector/way-concept-illustration_114360-1191.jpg?w=1380&t=st=1701184728~exp=1701185328~hmac=3f91d42620f87f8c96f9ec12178b8d4ba81d798318b36a13c973b674c0895c1e',
            height: 300,
            width: 350,
            ),
          decoration: pageDecoration.copyWith(
            bodyFlex: 6,
            imageFlex: 6,
            safeArea: 80,
          ),
          ),
        ],
        onDone: (){
          Get.toNamed(RouteName.loginPage);
        },
        showSkipButton: true,
        showNextButton: true,
        showDoneButton: true,
        showBackButton: false,
        back: Icon(Icons.arrow_forward),
        skip: Text(
          'Skip',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.lightGreen[300],
          ),
        ),
        next: Icon(
          Icons.arrow_forward,
          color: Colors.lightGreen[300],
        ),
        done: Text(
          'Done',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.lightGreen[300],
          ),
        ),
        dotsDecorator: DotsDecorator(
          size: Size.square(10.0),
          activeSize: Size(20.0, 10.0),
          color: Colors.grey,
          activeColor: Colors.lightGreen[300],
          spacing: EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          )
        ),
      ),
    );
  }
}
