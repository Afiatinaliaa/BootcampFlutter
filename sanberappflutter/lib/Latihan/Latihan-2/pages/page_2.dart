import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:sanberappflutter/Latihan/Latihan-2/routes/route_name.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Halaman 2'),
            ElevatedButton(
              onPressed: (){
                Get.toNamed(RouteName.page_3);
              },
              child: Text('Menuju Halaman Tiga')),
            ElevatedButton(
              onPressed: (){
                Get.toNamed(RouteName.page_1);
              },
              child: Text('Kembali ke page 1'))
          ],
        ),
      ),
    );
  }
}