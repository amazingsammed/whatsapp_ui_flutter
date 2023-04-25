import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:whatsapp_ui_flutter/pages/settings.dart';


import '../controller/home_controller.dart';
import '../widgets/Text2_Widgets.dart';
import 'layer1/calls_tab.dart';
import 'layer1/status_tab.dart';
import 'layer1/chat_tab.dart';

class Home extends StatelessWidget {
  AppController controller = Get.put(AppController());
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'Settings') {
                Get.to(() => Settings());
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  child: Text("New group"),
                  value: "New group",
                ),
                const PopupMenuItem(
                  child: Text("New broadcast"),
                  value: "New broadcast",
                ),
                const PopupMenuItem(
                  value: "Whatsapp Web",
                  child: Text("Whatsapp Web"),
                ),
                const PopupMenuItem(
                  value: "Starred messages",
                  child: Text("Starred messages"),
                ),
                PopupMenuItem(
                  value: "Settings",
                  child: Text("Settings"),
                ),
              ];
            },
          )
        ],
        title: MainText(
          data: 'WhatsApp',
        ),
        bottom: TabBar(
          controller: controller.controller,
          indicatorColor: Colors.white,
          tabs: controller.thetabs,
        ),
      ),
      body: TabBarView(
        controller: controller.controller,
        children: [
          Text("data"),
          ChatsPage(),
          StatusPage(),
          CallsPage(),
        ],
      ),
    );
  }
}
