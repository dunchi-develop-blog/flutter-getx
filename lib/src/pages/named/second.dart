import 'package:flutter/material.dart';
import 'package:flutter_getx/src/home.dart';
import 'package:get/get.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Named Page"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            MaterialButton(
                child: Text("뒤로 가기"),
                onPressed: () {
                  Get.back();
                }),
            MaterialButton(
                child: Text("홈으로 가기"),
                onPressed: () {
                  Get.offAllNamed("/");
                }),
          ]),
        ));
  }
}
