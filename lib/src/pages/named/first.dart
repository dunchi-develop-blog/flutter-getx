import 'package:flutter/material.dart';
import 'package:flutter_getx/src/home.dart';
import 'package:get/get.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("First Named Page"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // Text("${Get.arguments['name']} ${Get.arguments['num'].toString()}"),
            Text(
                "${(Get.arguments as DTO).name} ${(Get.arguments as DTO).num.toString()}"),
            MaterialButton(
                child: Text("다음 페이지로 가기"),
                onPressed: () {
                  Get.offNamed("/second");
                }),
          ]),
        ));
  }
}
