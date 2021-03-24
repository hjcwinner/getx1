import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1/home.dart';
import 'package:getx1/page/binding.dart';
import 'package:getx1/page/reactstate.dart';
import 'package:getx1/route/url.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Home(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/reactstate", page: () => ReactState(), transition: Transition.zoom),
        GetPage(name: "/binding", page: () => BindingPage(), transition: Transition.zoom),
        GetPage(name: "/urluid?uid", page: () => UrlUid(), transition: Transition.zoom)
      ],
    );
  }
}
