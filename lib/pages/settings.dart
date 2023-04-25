import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:whatsapp_ui_flutter/pages/settings/ProfilePage.dart';

import '../model/user_data.dart';


class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Settings"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Get.to(() => ProfilePage());
              },
              child: ListTile(
                title: Text(MainUser.name),
                subtitle: Text(MainUser.about),
                leading: CircleAvatar(
                  radius: 20,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(MainUser.image)),
                ),
                trailing: Icon(Icons.qr_code),
              ),
            ),
            Divider(),
            const ListTile(
              title: Text('Account'),
              subtitle: Text(''),
              leading: Icon(Icons.key),
            ),
            const ListTile(
              title: Text('Chats'),
              subtitle: Text(''),
              leading: Icon(Icons.chat),
            ),
            const ListTile(
              title: Text('Notifications'),
              subtitle: Text(''),
              leading: Icon(Icons.notifications),
            ),
            const ListTile(
              title: Text('Storage and data'),
              subtitle: Text(''),
              leading: Icon(Icons.settings_backup_restore_rounded),
            ),
            const ListTile(
              title: Text('Help'),
              subtitle: Text(''),
              leading: Icon(Icons.help_outline),
            ),
            const ListTile(
              title: Text('Invite a Friend'),
              leading: Icon(Icons.supervisor_account),
            ),
            Center(
              child: Text("From Trust"),
            )
          ],
        ),
      ),
    );
  }
}
