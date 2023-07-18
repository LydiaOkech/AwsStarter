import 'package:aws_starter/Constants/Colors.dart';
import 'package:aws_starter/Widgets/Texts.dart';
import 'package:flutter/material.dart';

class BlueFilledButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const BlueFilledButton({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
      child:
      ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: MyColors.blueColor,
        minimumSize: const Size(double.maxFinite, 50),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),)),
        onPressed: onPressed,
        child: WhiteText(text:text),));
  }
}


class BlueOutlineButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const BlueOutlineButton({Key? key, required this.onPressed, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            minimumSize: const Size(double.maxFinite, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),),
          side: const BorderSide(width: 2.0, color: MyColors.blueColor)
        ),
          onPressed: onPressed,
          child: BlueText(text:text)),);
  }
}

