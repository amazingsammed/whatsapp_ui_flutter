import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../model/account.dart';
import '../pages/Ontap pages/image_preview.dart';

class UserDialog extends StatelessWidget {
  Profile User;
  UserDialog({Key? key, required this.User}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 200,
        height: 300,
        child: Card(
            color: Colors.white,
            //clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 240,
                  width: double.maxFinite,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => ImagePreview(user: User));
                    },
                    child: Stack(
                      children: [
                        Positioned(
                          child: Hero(
                            tag: 'profile_pic${User.name}',
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(User.image),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        Positioned(
                            child: Container(
                          width: double.maxFinite,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.4)),
                          child: Text(
                            '   ${User.name}',
                            style: TextStyle(color: Colors.white),
                          ),
                        ))
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.message,
                            color: Colors.teal,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.call, color: Colors.teal)),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.video_camera_back,
                              color: Colors.teal)),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.info_outline, color: Colors.teal)),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
