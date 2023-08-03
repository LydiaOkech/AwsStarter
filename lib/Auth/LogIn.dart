import 'package:aws_starter/Constants/Colors.dart';
import 'package:aws_starter/Widgets/Buttons.dart';
import 'package:aws_starter/Widgets/TextFieds.dart';
import 'package:aws_starter/Widgets/Texts.dart';
import 'package:flutter/material.dart';

import '../Pages/Home.dart';
import 'ForgotPass.dart';

class LogIn extends StatelessWidget {
  
  LogIn({Key? key}) : super(key: key);

  final _signInKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColors.whiteColor,
        leading: BackButton(
          color: MyColors.purpleColor,
          onPressed: (){
          Navigator.pop(context);
        },),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SafeArea(child: PurpleTitle(text: 'SignIn',)),
            const SizedBox(height: 30,),
            Flexible(child:
            Form(
              key: _signInKey,
                child:
                  ListView(
                    children: [
                      AuthTextField(label: 'E-mail', hint: 'email', controller: _emailController),
                      const SizedBox(height: 20,),
                      AuthTextField(label: 'Password', hint: 'password', controller: _passController),
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPass()));
                            },
                              child: const BlueText(text: 'Forgot Password?'))
                        ],
                      ),
                      const SizedBox(height: 30,),
                      BlueFilledButton(text: 'Log In', onPressed: (){
                        logIn(context);
                      })

                    ],
            )))
          ],
        ),
      ),
    );
  }

  void logIn(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
  }
}
