import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1/route/second.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(() => Second());
                },
                child: Text('second')),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => Second(),
                      arguments: {"name": "세컨", "value": "페이지"});
                },
                child: Text('Arguments')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/urluid/23883");
                },
                child: Text('Url go uid')),
          ],
        ),
      ),
    );
  }
}
