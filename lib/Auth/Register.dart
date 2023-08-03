import 'package:aws_starter/Widgets/ProfileWidget.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../Constants/Colors.dart';
import '../Pages/Home.dart';
import '../Widgets/Buttons.dart';
import '../Widgets/TextFieds.dart';
import '../Widgets/Texts.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final _signUpKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  bool phone = true;
  bool email = false;
  String? number;
  String? profile;

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
      body:
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SafeArea(child: PurpleTitle(text: 'Create new account',)),
            const SizedBox(height: 30,),
            Flexible(child:
            Form(
                key: _signUpKey,
                child:
                ListView(
                  children: [
                     ProfileWidget(profPic: profile,),
                    const SizedBox(height: 30,),
                    AuthTextField(label: 'First Name', hint: 'fName', controller: _firstNameController),
                    const SizedBox(height: 20,),
                    AuthTextField(label: 'Last Name', hint: 'lName', controller: _lastNameController),
                    const SizedBox(height: 20,),
                    AuthTextField(label: 'UserName', hint: 'userName', controller: _userNameController),
                    const SizedBox(height: 20,),
                    AuthTextField(label: 'Password', hint: 'pass', controller: _passController),
                    const SizedBox(height: 15,),
                    Visibility(
                      visible: phone,
                      child: Column(
                        children: [
                        IntlPhoneField(
                        disableLengthCheck: false,
                        controller: _phoneController,
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.phone,color: MyColors.blueColor)),
                          alignLabelWithHint: true,
                          labelStyle: const TextStyle( color: MyColors.blackColor),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular( 20.0),
                            borderSide: const BorderSide(
                                width: 1.0,
                                color: Colors.grey
                            ),
                          ),),
                        initialCountryCode: 'KE',
                        validator:(phone){
                          if (phone == null ) {
                            return 'Cannot be empty';
                          }
                          number  = phone.countryCode.replaceFirst('+', '') +
                              phone.number.replaceFirst(RegExp(r'^\d'), '');
                          return null;
                        },

                      ),
                          const SizedBox(height: 20,),
                          BlueFilledButton(text: 'Send Code', onPressed:(){
                            MoveToHome();
                          }),
                          const SizedBox(height: 15,),
                          const BlackText(text: 'OR'),
                          const SizedBox(height: 15,),
                          InkWell(
                            onTap: (){
                              setState(() {
                                email = true;
                                phone = false;
                              });
                            },
                              child: const BlueText(text: 'SignUp with E-mail')),
                          const SizedBox(height: 20,)
                        ],
                      ),
                    ),
                    Visibility(
                      visible: email,
                      child: Column(
                        children: [
                          EmailTextField(controller: _emailController, hintText: 'email', label: 'E-mail'),
                          const SizedBox(height: 20,),
                          BlueFilledButton(text: 'Sign Up', onPressed:(){
                            MoveToHome();
                          }),
                          const SizedBox(height: 15,),
                          const BlackText(text: 'OR'),
                          const SizedBox(height: 15,),
                          InkWell(
                            onTap: (){
                              setState(() {
                                email = false;
                                phone = true;
                              });
                            },
                              child: const BlueText(text: 'SignUp with Phone Number')),
                          const SizedBox(height: 20,)
                        ],
                      ),
                    ),

                    const SizedBox(height: 20,),
                    const BlackText(text: 'By creating an account, you agree with our'),
                    const Center(child: PurpleText(text: 'Terms of Use'))
                ]))),

          ],
        ),
      ),
    );
  }

  MoveToHome(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home() ));
  }
}
