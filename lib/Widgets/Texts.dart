import 'package:aws_starter/Constants/Colors.dart';
import 'package:flutter/material.dart';

class PurpleTitle extends StatelessWidget {
  final String text;
  const PurpleTitle({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(color: MyColors.purpleColor,
        fontSize: 25, fontWeight: FontWeight.bold),);
  }
}

class PurpleText extends StatelessWidget {
  final String text;
  const PurpleText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(color: MyColors.purpleColor,),);
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

class BlueText extends StatelessWidget {
  final String text;
  const BlueText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(color: MyColors.blueColor,
        fontSize: 18), textAlign: TextAlign.center,);
  }
}
