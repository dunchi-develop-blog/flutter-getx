import 'package:flutter/material.dart';
import 'file:///F:/0.github/flutter-getx/lib/src/pages/normal/first.dart';
import 'package:flutter_getx/src/pages/normal/second.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            MaterialButton(
                child: Text("First Page"),
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (_) => FirstPage()));
                  Get.to(FirstPage());
                }),
            MaterialButton(
                child: Text("First named Page"),
                onPressed: () {
                  // Navigator.of(context).pushNamed("/first");
                  // Get.to(FirstPage(), arguments: "굳굳");
                  // Get.toNamed("/first", arguments: {"name":"굳굳","num":22});
                  Get.toNamed("/first", arguments: DTO(name: "굳굳", num: 22));
                }),
            MaterialButton(
                child: Text("동적 URL"),
                onPressed: () {
                  Get.toNamed("/user/5555?name=굳굳&age=22");
                })
          ]),
        ));
  }
}

class DTO {
  String name;
  int num;

  DTO({this.name, this.num});
}
