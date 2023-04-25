import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../controller/home_controller.dart';
import '../../model/account.dart';
import '../../model/user_data.dart';
import 'contact_view.dart';

class ChatScreen extends StatelessWidget {
  AppController controller = Get.find();
  Profile user;
  String name;

  ChatScreen({Key? key, required this.user, required this.name})
      : super(key: key);
  TextEditingController Textcon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<Message> messages = user.message;
    List<Message> message = [];
    messages.forEach((element) {
      if (element.receiver.contains(name)) {
        message.add(element);
      }
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Container(
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  size: 20,
                ),
                Expanded(
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage(user.image), fit: BoxFit.cover)),
                  ),
                ),
              ],
            ),
          ),
        ),
        title: GestureDetector(
            onTap: () {
              Get.to(ContactView(user));
            },
            child: Text(user.name)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_camera_back)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: message.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 10, bottom: 10),
                //physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(
                        left: 14, right: 14, top: 10, bottom: 10),
                    child: Align(
                      alignment: (messages[index].byme == false
                          ? Alignment.topLeft
                          : Alignment.topRight),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: (messages[index].byme == true
                              ? Colors.grey.shade200
                              : Colors.grey.shade200),
                        ),
                        padding: EdgeInsets.all(9),
                        child: Text(
                          message[index].data,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 4.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.emoji_emotions_outlined)),
                            Expanded(
                              child: TextField(
                                controller: Textcon,
                                decoration: InputDecoration(
                                    hintText: "Enter your Message",
                                    border: InputBorder.none),
                              ),
                            ),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.camera)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Obx(() {
                      return GestureDetector(
                        onTap: () {
                          controller.OnChanged(Textcon.text);

                          controller.sendicon == true.obs
                              ? {
                                  controller.message.add(Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: const BoxDecoration(
                                            color: Colors.amberAccent,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(0),
                                                topRight: Radius.circular(2),
                                                bottomLeft: Radius.circular(2),
                                                bottomRight:
                                                    Radius.circular(2))),
                                        child: Text(Textcon.text.toString()),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      )
                                    ],
                                  )),
                                  Textcon.clear()
                                }
                              : null;
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.teal,
                          child: controller.sendicon == false.obs
                              ? Icon(
                                  Icons.mic,
                                )
                              : Icon(
                                  Icons.send,
                                ),
                        ),
                      );
                    })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
