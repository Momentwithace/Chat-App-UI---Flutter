import 'package:chat_app_ui/constant.dart';
import 'package:chat_app_ui/models/ChatMessages.dart';
import 'package:chat_app_ui/screens/chats/conponents/text_message.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key, required this.message});

  final ChatMessage message; 
  
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  const EdgeInsets.only(top: kDefaultPadding),
      child: Row(
        mainAxisAlignment: message.isSender 
        ? MainAxisAlignment.end 
        : MainAxisAlignment.start,
        children: [
          if (!message.isSender)...[
            const CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage("assets/images/user_2.png"),
            ),
            const SizedBox(width: kDefaultPadding)
          ],
          TextMessage(message: message ,),
        ],
      ));
  }
}
