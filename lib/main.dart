import 'package:flutter/material.dart';
import 'package:flutter_getx/src/home.dart';
import 'package:flutter_getx/src/pages/named/first.dart';
import 'package:flutter_getx/src/pages/named/second.dart';
import 'package:flutter_getx/src/pages/user.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX',
      home: HomePage(),
      initialRoute: "/",
      // routes: {
      //   "/" : (context) => HomePage(),
      //   "/first" : (context) => FirstNamedPage(),
      //   "/second" : (context) => SecondNamedPage(),
      // },
      getPages: [
        GetPage(name: "/", page: () => HomePage(), transition: Transition.zoom),
        GetPage(
            name: "/first",
            page: () => FirstNamedPage(),
            transition: Transition.zoom),
        GetPage(
            name: "/second",
            page: () => SecondNamedPage(),
            transition: Transition.zoom),
        GetPage(name: "/user/:uid", page: () => UserPage())
      ],
    );
  }
}
