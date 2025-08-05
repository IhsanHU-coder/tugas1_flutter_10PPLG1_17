import 'package:flutter/material.dart';


class CustomField extends StatelessWidget {

  final TextEditingController textEditingController;
  final String labelText;
  final String hintText;
  final bool obscureText;

  const CustomField({super.key, required this.textEditingController, required this.labelText, required this.obscureText, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(label:Text(""), hintText: hintText,
      ),
      controller: textEditingController,
    );
  }
}