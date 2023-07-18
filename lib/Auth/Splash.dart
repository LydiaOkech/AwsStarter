import 'package:aws_starter/Widgets/Buttons.dart';
import 'package:aws_starter/Widgets/Texts.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          SafeArea(
              child: Image.asset(
                  'assets/rocket.png', width: 150,)
          ),
            const SizedBox(height: 30,),
            const BlueTitle(text: 'InstaMobile'),
            const SizedBox(height: 30,),
            const BlackText(text:'Use this codebase to start a new AWS mobile app in minutes.'),
            const SizedBox(height: 20,),
            BlueFilledButton(text: 'Log In', onPressed: (){}),
            BlueOutlineButton(onPressed: (){}, text: 'Sign Up')
        ],),
      ),
    );
  }
}
