import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UrlUid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('urluid'),),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${Get.parameters['uid']}", style: TextStyle(fontSize: 35)),
          // Text("${Get.parameters['name']}", style: TextStyle(fontSize: 35)),
          // Text("${Get.parameters['local']}", style: TextStyle(fontSize: 35)),
        ],
      )),
    );
  }
}
