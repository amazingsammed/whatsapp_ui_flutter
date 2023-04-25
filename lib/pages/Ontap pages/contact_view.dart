import 'package:flutter/material.dart';

import '../../model/account.dart';


class ContactView extends StatelessWidget {
  Profile User;
  ContactView(this.User);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text('data'),
        ),
      ],
    ));
  }
}
