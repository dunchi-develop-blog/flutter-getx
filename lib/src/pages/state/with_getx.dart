import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/count_controller_with_getx.dart';
import 'package:get/get.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("GetX"),
          GetBuilder<CountControllerWithGetX>(
              id: "first",
              builder: (controller) {
                return Text("${controller.count}");
              }),
          GetBuilder<CountControllerWithGetX>(
              id: "first",
              builder: (controller) {
                return Text("${controller.count}");
              }),
          MaterialButton(onPressed: () {
            Get.find<CountControllerWithGetX>().increase("first");
          }),
          MaterialButton(onPressed: () {
            Get.find<CountControllerWithGetX>().increase("second");
          })
        ],
      ),
    );
  }
}
