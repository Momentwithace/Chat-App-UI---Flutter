import 'package:chat_app_ui/constant.dart';
import 'package:chat_app_ui/screens/messages/components/body.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          const BackButton(),
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/user_2.png"),
          ),
          const SizedBox(width: kDefaultPadding * 0.75,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Ace Alone",
              style: TextStyle(fontSize: 16),
              ),
              Text("Active 3s ago",
              style: TextStyle(fontSize: 16),
              ),
            ],
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {}, 
          icon:const Icon(Icons.local_phone)),
        IconButton(
        onPressed: () {}, 
        icon:const Icon(Icons.videocam)),
        const SizedBox(width: kDefaultPadding / 2,)
      ],
    );
  }
}