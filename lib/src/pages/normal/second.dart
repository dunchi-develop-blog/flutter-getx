import 'package:flutter/material.dart';
import 'package:flutter_getx/src/home.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Page"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            MaterialButton(
                child: Text("뒤로 가기"),
                onPressed: () {
                  // Navigator.of(context).pop();
                  Get.back();
                }),
            MaterialButton(
                child: Text("홈으로 가기"),
                onPressed: () {
                  // Navigator.of(context).pop();
                  // Get.to(HomePage());
                  // Navigator.of(context).pushAndRemoveUntil(MateriaPageRoute(builder: (_) => HomePage()), (route) => false);
                  Get.offAll(HomePage());
                }),
          ]),
        ));
  }
}
