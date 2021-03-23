import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1/home.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
      ),
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${Get.arguments['name']} : ${Get.arguments['value']}', style: TextStyle(fontSize: 35),),
            ElevatedButton(onPressed: () {
              Get.back();
            }, child: Text('back')),
            ElevatedButton(onPressed: () {
              Get.offAll(Home());
            }, child: Text('home')),
            ElevatedButton(onPressed: () {
              Get.offAllNamed('/');
            }, child: Text('Namedhome')),
          ],
        ),
      ),
    );
  }
}