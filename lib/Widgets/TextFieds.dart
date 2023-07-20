import 'package:flutter/material.dart';

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
