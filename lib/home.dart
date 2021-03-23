import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1/page/state.dart';
import 'package:getx1/route/fitst.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get x'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(() => First());
                },
                child: Text('first')),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => GetxState());
                },
                child: Text('state')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/reactstate');
                },
                child: Text('reactstate')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/binding');
                },
                child: Text('binding'))
          ],
        ),
      ),
    );
  }
}
