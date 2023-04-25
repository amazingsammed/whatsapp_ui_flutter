import 'dart:io';

import 'package:flutter/material.dart';

import '../../model/user_data.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Profile"),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 5,
          ),
          Center(
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 85,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(MainUser.image),
                  ),
                ),
                Positioned(
                    bottom: 5,
                    right: 5,
                    child: CircleAvatar(
                      backgroundColor: Colors.teal,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.camera_alt),
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text('Name'),
            subtitle: Text(MainUser.name),
            leading: Icon(Icons.supervisor_account_rounded),
          ),
          ListTile(
            title: Text('About'),
            subtitle: Text(MainUser.about),
            leading: Icon(Icons.info_outline),
          ),
          ListTile(
            title: Text('Phone'),
            subtitle: Text('Trust'),
            leading: Icon(Icons.call),
          ),
        ],
      ),
    );
  }
}
