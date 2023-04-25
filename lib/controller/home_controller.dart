import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/user_data.dart';

class AppController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var message = <Widget>[].obs;

  var sendicon = true.obs;
  var val = ''.obs;
  final List<Tab> thetabs = [
    Tab(
      icon: Icon(Icons.groups),
      height: 12,
    ),
    Tab(text: "Chats"),
    Tab(text: "Status"),
    Tab(text: "Calls"),
  ];
  TabController? controller;
  @override
  void onInit() {
    super.onInit();
    controller =
        TabController(length: thetabs.length, vsync: this, initialIndex: 1);
  }

  @override
  void onClose() {
    controller?.dispose();
    super.onClose();
  }

  void OnChanged(String vale) {
    val.trim().isNotEmpty == true
        ? sendicon.value = true
        : sendicon.value = false;
    val.value = vale;
  }
}
