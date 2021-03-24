import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1/controller/count_controller_getx.dart';
import 'package:getx1/controller/count_controller_provider.dart';
import 'package:getx1/statepage/getx.dart';
import 'package:getx1/statepage/provider.dart';
import 'package:provider/provider.dart';

class GetxState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('State'),
      ),
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [  
            Getxstate(),
            SizedBox(height: 25),
            ChangeNotifierProvider<CountControllerProvider>(
              create: (_) => CountControllerProvider(), child: ProviderState(),
            )
          ],
        ),
      ),
    );
  }
}
