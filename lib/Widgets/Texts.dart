import 'package:aws_starter/Constants/Colors.dart';
import 'package:flutter/material.dart';

class BlueTitle extends StatelessWidget {
  final String text;
  const BlueTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(color: MyColors.blueColor,
        fontSize: 25, fontWeight: FontWeight.bold),);
  }
}

class BlueText extends StatelessWidget {
  final String text;
  const BlueText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(color: MyColors.blueColor,),);
  }
}

class WhiteText extends StatelessWidget {
  final String text;
  const WhiteText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(color: MyColors.whiteColor,),);
  }
}

class BlackText extends StatelessWidget {
  final String text;
  const BlackText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(color: MyColors.blackColor,
    fontSize: 18), textAlign: TextAlign.center,);
  }
}
