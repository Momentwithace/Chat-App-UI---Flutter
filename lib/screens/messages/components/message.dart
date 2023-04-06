import 'package:chat_app_ui/constant.dart';
import 'package:chat_app_ui/models/ChatMessages.dart';
import 'package:chat_app_ui/screens/chats/conponents/text_message.dart';
import 'package:chat_app_ui/screens/messages/components/audio_message.dart';
import 'package:chat_app_ui/screens/messages/components/video_message.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key, required this.message});

  final ChatMessage message; 
  
  @override
  Widget build(BuildContext context) {
    Widget messageConstant(ChatMessage message){
      switch (message.messageType){
        case ChatMessageType.text:
          return TextMessage(message: message);
        case ChatMessageType.audio:
          return AudioMessage(message: message,);
        case ChatMessageType.video:
          return VideoMessage(message: message,);
        default:
          return const SizedBox();
      }
    }


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
          messageConstant(message),
          if(message.isSender) MessageStatusDot(status: message.messageStatus,)
        ],
      ));
  }
}

class MessageStatusDot extends StatelessWidget{
  const MessageStatusDot({super.key, required this.status});

  final MessageStatus status;

  @override
  Widget build(BuildContext context){
    Color dotColor(MessageStatus status){
      switch (status){
        case MessageStatus.not_sent:
          return kErrorColor;
        case MessageStatus.not_view:
          return Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.1);
        case MessageStatus.viewed:
          return kPrimaryColor;
        default:
          return Colors.transparent;
      }
    }
    return Container(
      margin: const EdgeInsets.only(left: kDefaultPadding / 2),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: dotColor(status),
        shape: BoxShape.circle
      ),
      child: Icon(
        status == MessageStatus.not_sent
                  ? Icons.close
                  : Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}