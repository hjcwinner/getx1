import 'package:flutter/material.dart';

class Getxstate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('GextState', style: TextStyle(fontSize: 35),),
          Text('0', style: TextStyle(fontSize: 35),),
          ElevatedButton(onPressed: () {}, child: Icon(Icons.add)),
        ],
      ),
    );
  }
}