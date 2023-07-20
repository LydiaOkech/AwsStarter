
import 'package:aws_starter/Widgets/Buttons.dart';
import 'package:aws_starter/Widgets/Texts.dart';
import 'package:flutter/material.dart';

import 'LogIn.dart';

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
            const PurpleTitle(text: 'InstaMobile'),
            const SizedBox(height: 30,),
            const BlackText(text:'Use this codebase to start a new AWS mobile app in minutes.'),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: BlueFilledButton(text: 'Log In', onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn()));
              }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: BlueOutlineButton(onPressed: (){}, text: 'Sign Up'),
            )
        ],),
      ),
    );
  }


}
