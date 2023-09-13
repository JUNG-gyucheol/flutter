import 'package:flutter/material.dart';
import '../models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => ChatscreenState();
}

class ChatscreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            const Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(dummyData[index].avatarUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(dummyData[index].name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(dummyData[index].time,
                      style:
                          const TextStyle(color: Colors.grey, fontSize: 14.0)),
                ],
              ),
              subtitle: Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(
                  dummyData[index].message,
                  style: const TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
