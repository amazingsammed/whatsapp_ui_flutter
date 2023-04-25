import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../controller/home_controller.dart';
import '../../model/user_data.dart';
import '../../widgets/lead_dialog.dart';
import '../Ontap pages/ChatScreen.dart';

class ChatsPage extends StatelessWidget {
  AppController controller = Get.put(AppController());
  ChatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: User.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                if (controller.message.isNotEmpty) {
                } else {}

                Get.to(() => ChatScreen(
                      user: User[index],
                      name: User[index].name,
                    ));
              },
              child: ListTile(
                  //trailing: Text(User[index].message[index].time),
                  leading: InkWell(
                    onTap: () {
                      Get.dialog(UserDialog(
                        User: User[index],
                      ));
                    },
                    child: CircleAvatar(
                      radius: 20,
                      child: Hero(
                        tag: 'profile_pic${User[index].name}',
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(User[index].image)),
                      ),
                    ),
                  ),
                  title: Text(User[index].name),
                  subtitle: User[index].message.isNotEmpty
                      ? Text(
                          User[index].message.last.data,
                          style: TextStyle(overflow: TextOverflow.ellipsis),
                        )
                      : Text("no message yet")),
            );
          }),
    );
  }
}
