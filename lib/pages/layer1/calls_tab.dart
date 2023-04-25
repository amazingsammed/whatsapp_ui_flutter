import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import '../../model/account.dart';
import '../../model/user_data.dart';
import '../../widgets/lead_dialog.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var callprofile = <Profile>[];
    for (var element in MainUser.calls) {
      for (var man in User) {
        if (element.id == man.id) {
          callprofile.add(man);
        }
      }
    }

    return Scaffold(
      body: ListView.builder(
          itemCount: callprofile.length,
          itemBuilder: (context, index) {
            return ListTile(
                trailing: IconButton(
                  icon: MainUser.calls[index].typeofcall == true
                      ? Icon(Icons.call)
                      : Icon(Icons.video_call),
                  onPressed: () {},
                ),
                leading: GestureDetector(
                  onTap: () {
                    Get.dialog(UserDialog(
                      User: callprofile[index],
                    ));
                  },
                  child: CircleAvatar(
                    radius: 20,
                    child: Hero(
                      tag: Text('data'),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(callprofile[index].image)),
                    ),
                  ),
                ),
                title: Text(callprofile[index].name),
                subtitle: Text(MainUser.calls[index].time));
          }),
    );
  }
}
