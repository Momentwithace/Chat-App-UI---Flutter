import 'package:chat_app_ui/constant.dart';
import 'package:chat_app_ui/screens/signinOrsignup/singin_singup.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Column(
        children: [
          const Spacer(flex: 2,),
          Image.asset('assets/images/welcome_image.png'),
          const Spacer(flex: 3,),
          Text("Welcome to freedom\n messaging app.",
          textAlign: TextAlign.center,
          style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(fontWeight: FontWeight.bold), 
          ),
          const Spacer(),
          Text("Free free to talk to anyone\n in other langauge",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context)
            .textTheme.bodyLarge
            ?.color
            ?.withOpacity(0.64)
          ),),
          const Spacer(flex: 3,),
          FittedBox(
            child: TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SigninOrSingupScreen()));
            }
            , child: Row(
              children: [
                Text('Skip',
                style: Theme.of(context).textTheme.bodyLarge
                ?.copyWith(color: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.color
                ?.withOpacity(0.8))
                ),
                const SizedBox(width: kDefaultPadding / 4),
                Icon(Icons.arrow_forward_ios,
                size: 16,
                color: Theme.of(context).textTheme.bodyLarge?.color?.withOpacity(0.8),)  
              ],
            )),
          )
        ],
      )),
    );
  }
}