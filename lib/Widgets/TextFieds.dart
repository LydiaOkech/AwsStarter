import 'package:aws_starter/Constants/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:validators/validators.dart';

class AuthTextField extends StatelessWidget {
  final String hint, label;
  final TextEditingController controller;
  const AuthTextField({Key? key, required this.label, required this.hint,
  required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(color: Colors.grey, width: 1.0),
        ),
        label: Text(label),
        hintText: hint,
      ),
      validator: (String? value){
        if(value == null){
          return 'Please input $label';
        }
        return null;
      },
    );
  }
}


class EmailTextField  extends StatelessWidget{

  final TextEditingController controller;
  final String hintText;
  final String label;
  const EmailTextField({Key? key,
    required this.controller, required this.hintText, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textCapitalization: TextCapitalization.none,
      inputFormatters: <TextInputFormatter>[LowerCaseTextInputFormatter()],
      decoration: InputDecoration(
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          alignLabelWithHint: true,
          labelStyle: const TextStyle( color: MyColors.blackColor),
          labelText: label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
      ),
      validator: (val){
        if (val == null || val.isEmpty) {
          return 'Enter your $hintText';
        } else if (!isEmail(val))
        {
          return 'Please Enter a valid Email Address';
        }

        return null;
      },
    );
  }
}

class LowerCaseTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    String lowercaseText = newValue.text.toLowerCase();
    return TextEditingValue(
      text: lowercaseText,
      selection: newValue.selection,
    );
  }
}

// class PhoneTextField extends StatelessWidget {
//   final TextEditingController controller;
//
//   const PhoneTextField({Key? key, required this.controller}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return IntlPhoneField(
//       disableLengthCheck: false,
//       controller: controller,
//       decoration: InputDecoration(
//         labelText: 'Phone Number',
//         filled: true,
//         floatingLabelBehavior: FloatingLabelBehavior.never,
//         fillColor: MyColors.whiteColor,
//         suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.phone,color: MyColors.blueColor)),
//         alignLabelWithHint: true,
//         labelStyle: const TextStyle( color: MyColors.blueColor),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular( 10.0),
//           borderSide: const BorderSide(
//               width: 1.0,
//               color: MyColors.purpleColor
//           ),
//         ),),
//       initialCountryCode: 'KE',
//       validator:(phone){
//         if (phone == null ) {
//           return 'Cannot be empty';
//         }
//         number  = phone.countryCode.replaceFirst('+', '') +
//             phone.number.replaceFirst(RegExp(r'^\d'), '');
//         widget.onNumberChanged(number);
//         return null;
//       },
//
//     );
//   }
// }

