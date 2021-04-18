import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CountControllerWithGetX extends GetxController{
  int count = 0;
  void increase(String id){
    count++;
    update([id]);
  }
}