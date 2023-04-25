import 'package:flutter/material.dart';

class Profile {
  int id;
  String name;
  String image;
  String number;
  String about;
  List<Status> status;
  List<Message> message;
  List<Calls> calls;
  Profile({
    required this.id,
    required this.name,
    required this.image,
    required this.number,
    this.about = 'Hello , i am using whatsapp',
    this.status = const [],
    this.message = const [],
    this.calls = const [],
  });
}

class Status {
  String image;
  String time;

  Status({
    required this.image,
    required this.time,
  });
}

class Message {
  String data;
  String time;
  bool byme;
  String receiver;

  Message({
    required this.data,
    required this.time,
    required this.byme,
    required this.receiver,
  });
}

class Calls {
  int id;
  // String image;
  //String name;
  String time;
  bool typeofcall;
  bool incoming;

  Calls(
      {required this.id,
      // required this.image,
      // required this.name,
      required this.time,
      this.typeofcall = true,
      this.incoming = false});
}
