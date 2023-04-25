import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  String data;
  MainText({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}

class MainText2 extends StatelessWidget {
  String data;
  MainText2({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(fontWeight: FontWeight.normal),
    );
  }
}
