import 'package:flutter/material.dart';

import '../../model/account.dart';


class ImagePreview extends StatelessWidget {
  Profile user;
  ImagePreview({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(user.name),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(user.image), fit: BoxFit.cover)),
          height: 400,
          width: double.maxFinite,
        ),
      ),
    );
  }
}
