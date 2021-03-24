import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1/controller/count_controller_getx.dart';

class Getxstate extends StatelessWidget {
  CountControllerGetx _getstate = Get.put(CountControllerGetx());

  Widget _button(String id) {
    return ElevatedButton(
        onPressed: () {
          _getstate.increase(id);
        },
        child: Icon(Icons.add));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'GextState',
            style: TextStyle(fontSize: 35),
          ),
          GetBuilder<CountControllerGetx>(
              id: "first",
              builder: (controller) {
                return Text('${controller.count}',
                    style: TextStyle(fontSize: 35));
              }),
          GetBuilder<CountControllerGetx>(
              id: "second",
              builder: (controller) {
                return Text('${controller.count}',
                    style: TextStyle(fontSize: 35));
              }),
          _button("first"),
          _button("second"),
        ],
      ),
    );
  }
}
