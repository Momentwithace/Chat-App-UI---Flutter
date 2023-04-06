import 'package:chat_app_ui/constant.dart';
import 'package:chat_app_ui/models/ChatMessages.dart';
import 'package:chat_app_ui/screens/messages/components/chat_input_field.dart';
import 'package:chat_app_ui/screens/messages/components/message.dart';
import 'package:flutter/material.dart';

class Body  extends StatelessWidget {
  const Body ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding
            ),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) => Message(message: demeChatMessages[index],)
              ),
          ),
        ),
        const ChatInputField()
      ],
    );
  }
}




