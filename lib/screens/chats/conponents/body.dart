import 'package:chat_app_ui/components/filled_outline_button.dart';
import 'package:chat_app_ui/constant.dart';
import 'package:chat_app_ui/models/chat.dart';
import 'package:chat_app_ui/screens/chats/conponents/chat_card.dart';
import 'package:chat_app_ui/screens/messages/message_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
              children: [
                FillOutlineButton(press: () {}, text: "Recent Message"),
                const SizedBox(width: kDefaultPadding,),
                FillOutlineButton(
                  press: () {},
                  text: "Activate",
                  isFilled: false,
                )
              ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index], 
              press: () {  
                Navigator.push(context, MaterialPageRoute(builder: (context) => MessageScreen()));
              },)))
      ],
    );
  }
}
