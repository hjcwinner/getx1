import 'package:flutter/material.dart';

class GetxState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State'),
      ),
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('state', style: TextStyle(fontSize: 35),),
            ElevatedButton(onPressed: () {}, child: Text('Button')),
          ],
        ),
      ),
    );
  }
}
