import 'package:flutter/material.dart';
import 'package:laptop_market/constants.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {Key? key,
      required this.text,
      this.width = 100,
      this.height = 50,
      this.radius = 20.0,
      this.textStyle = kButtonTextStyle,
      this.backgroundColor = Colors.white,
      required this.onPressed})
      : super(key: key);

  final String text;
  final double width;
  final double height;
  final double radius;
  final void Function() onPressed;
  final TextStyle textStyle;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
