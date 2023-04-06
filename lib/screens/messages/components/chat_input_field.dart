import 'package:chat_app_ui/constant.dart';
import 'package:flutter/material.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 32,
            color: const Color(0xff087947).withOpacity(0.08)
            ),
          ]
      ),
      child: SafeArea(
        child: Row(
          children: [
            const Icon(Icons.mic, color: kPrimaryColor,),
            const SizedBox(width: kDefaultPadding,),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 0.75
                ),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.05),
                  borderRadius:BorderRadius.circular(48),
                  
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.sentiment_satisfied_alt_outlined,
                      color: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.color
                      ?.withOpacity(0.64),
                    ),
                   const SizedBox(width: kDefaultPadding / 4,),
                   const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Tpye message",
                        border: InputBorder.none
                      ),
                    )),  
                  ],
                ),
              )),
               Icon(
                Icons.attach_file,
                color: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.color
                ?.withOpacity(0.64),
              ),
                const SizedBox(width: kDefaultPadding / 4,),
                Icon(
                Icons.camera_alt_outlined,
                color: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.color
                ?.withOpacity(0.64),
              ),
          ],
        )),
    );
  }
}