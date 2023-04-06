import 'package:chat_app_ui/components/primary_button.dart';
import 'package:chat_app_ui/constant.dart';
import 'package:chat_app_ui/screens/chats/chats_screen.dart';
import 'package:flutter/material.dart';

class SigninOrSingupScreen extends StatelessWidget {
  const SigninOrSingupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              const Spacer(flex: 2,),
              Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.light
                ? "assets/images/Logo_light.png"
                : "assets/images/Logo_dark.png" ,
              height: 146,
              ), 
              const Spacer(),
               PrimaryButton(
                text: "Sign in",
                press: () { 
                  Navigator.push(context,MaterialPageRoute(builder: (context) => ChatsScreen()));
                },
               ),
               const SizedBox(height: kDefaultPadding * 1.5,),
                PrimaryButton(
                color: Theme.of(context).colorScheme.secondary,
                text: "Sign Up",
                press: () { },
               ),
               const Spacer(flex: 2,)
            ],
              ),
        )),
    );
  }
}