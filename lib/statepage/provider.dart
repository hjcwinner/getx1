import 'package:flutter/material.dart';
import 'package:getx1/controller/count_controller_provider.dart';
import 'package:provider/provider.dart';

class ProviderState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('ProviderState', style: TextStyle(fontSize: 35),),
          Consumer<CountControllerProvider>(
            builder: (_, snapshot, child){
              return Text('${snapshot.count}', style: TextStyle(fontSize: 35));
            },
          ) ,      
          ElevatedButton(onPressed: () {
              Provider.of<CountControllerProvider>(context, listen: false).increase();
          }, child: Icon(Icons.add)),
        ],
      ),
    );
  }
}