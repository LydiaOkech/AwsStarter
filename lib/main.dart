import 'package:aws_starter/Constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Auth/Splash.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner:false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const Main()
    ));
  }


class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle( const SystemUiOverlayStyle(
        statusBarColor: MyColors.authBackGround, statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark),);
    return const Scaffold(
        backgroundColor: MyColors.authBackGround,
        body:
        Splash() );
  }
}


