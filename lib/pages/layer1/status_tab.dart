import 'package:flutter/material.dart';


import '../../model/account.dart';
import '../../model/user_data.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Profile> Status = [];
    for (var element in User) {
      if (element.status.isNotEmpty) {
        Status.add(element);
        print(Status[0].name);
      }
    }

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            ListTile(
              title: Text("My Status"),
              subtitle: Text("Today, 8:27"),
              leading: CircleAvatar(
                radius: 20,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(MainUser.image)),
              ),
              trailing: Icon(
                Icons.more_horiz,
                color: Colors.teal,
              ),
            ),
            Text("Recent updates"),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: Status.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      // trailing: Text(User[index].message[index].time),
                      leading: CircleAvatar(
                        radius: 20,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(Status[index].image)),
                      ),
                      title: Text(Status[index].name),
                      // subtitle: User[index].message.isNotEmpty
                      //     ? Text(
                      //         Status[index].status[index].time,
                      //         style:
                      //             TextStyle(overflow: TextOverflow.ellipsis),
                      //       )
                      //     : Text("no message yet")
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
