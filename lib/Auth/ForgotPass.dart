import 'package:flutter/material.dart';

import '../Constants/Colors.dart';
import '../Widgets/Buttons.dart';
import '../Widgets/TextFieds.dart';
import '../Widgets/Texts.dart';

class ForgotPass extends StatelessWidget {
   ForgotPass({Key? key}) : super(key: key);

  final _signInKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

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
            const SafeArea(child: PurpleTitle(text: 'Reset Password',)),
            const SizedBox(height: 70,),
            Flexible(child:
            Form(
                key: _signInKey,
                child:
                ListView(
                  children: [
                    AuthTextField(label: 'E-mail', hint: 'email', controller: _emailController),
                    const SizedBox(height: 20,),
                    BlueFilledButton(text: 'Send', onPressed: (){
                      reset();
                    })

                  ],
                )))
          ],
        ),
      ),
    );
  }

  void reset() {}
}
