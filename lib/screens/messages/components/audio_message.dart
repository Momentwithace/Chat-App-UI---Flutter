
import 'package:chat_app_ui/constant.dart';
import 'package:chat_app_ui/models/ChatMessages.dart';
import 'package:flutter/material.dart';

class AudioMessage extends StatelessWidget{
  const AudioMessage({super.key, required this.message});
  
  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      height: 30,
      padding:  const EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 0.75,
        vertical: kDefaultPadding / 2.5
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: kPrimaryColor.withOpacity(message.isSender ? 1: 0.1),
      ),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: message.isSender ? Colors.white : kPrimaryColor,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 2,
                  color: message.isSender 
                  ? Colors.white
                  : kPrimaryColor.withOpacity(0.4),
                ),
                Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: kPrimaryColor,
                    shape: BoxShape.circle
                  ),
                )
              ],
            )
            )
        ],
      ),
    );
  }

}