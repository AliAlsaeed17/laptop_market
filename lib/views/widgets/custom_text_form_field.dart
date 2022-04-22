import 'package:flutter/material.dart';
import 'package:laptop_market/constants.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled(
      {Key? key,
      required this.hintText,
      required this.prefixIcon,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      required this.onSaved})
      : super(key: key);

  final String hintText;
  final Icon prefixIcon;
  final TextInputType keyboardType;
  final bool obscureText;
  final void Function(String?) onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        fillColor: kBackgroundColor,
        hintText: hintText,
        border: kTextFormFieldBorder,
        prefixIcon: prefixIcon,
      ),
      onSaved: onSaved,
    );
  }
}
