import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton(
      {Key? key,
      required this.icon,
      required this.text,
      this.width = 100,
      this.textColor = const Color(0xff4B75E9),
      this.backgroundColor = Colors.white,
      this.radius = 20.0,
      this.elevation = 5.0,
      required this.onPressed})
      : super(key: key);

  Icon icon;
  String text;
  double width;
  void Function() onPressed;
  Color textColor;
  Color backgroundColor;
  double radius;
  double elevation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      child: Material(
        elevation: elevation,
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          width: width,
          child: TextButton.icon(
            style: TextButton.styleFrom(primary: textColor),
            onPressed: onPressed,
            icon: icon,
            label: Text(text),
          ),
        ),
      ),
    );
  }
}
