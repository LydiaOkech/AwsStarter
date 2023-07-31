import 'package:aws_starter/Constants/Colors.dart';
import 'package:flutter/material.dart';

class CameraUpload extends StatelessWidget {
  final String name;
  final void Function()? onTap;
  const CameraUpload({Key? key, required this.name, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.camera_alt_outlined, color: MyColors.purpleColor,),
      title: Text(name),
      onTap: onTap,
    );
  }
}


class FileUpload extends StatelessWidget {
  final String name;
  final void Function()? onTap;
  const FileUpload({Key? key, required this.name, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.image, color: MyColors.purpleColor),
      title: Text(name),
      onTap: onTap,
    );
  }
}