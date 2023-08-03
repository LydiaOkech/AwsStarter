import 'package:aws_starter/Constants/Colors.dart';
import 'package:aws_starter/Widgets/Texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
    // Your initialization logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backGroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: MyColors.greyColor),
        backgroundColor: MyColors.backGroundColor,
        title: const BoldBlackText(text: 'Home',),
        centerTitle: true,
        actions: [IconButton(onPressed: () {  }, icon:
        const Icon(Icons.power_settings_new_outlined, color: MyColors.purpleColor,))],
      ),
      body: Column(
        children: const [
          Divider(height: 1, thickness: 1, color: MyColors.blackColor,),
        ],
      ),
    );
  }
}
