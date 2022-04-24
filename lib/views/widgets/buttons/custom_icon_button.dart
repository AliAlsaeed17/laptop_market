import 'package:flutter/material.dart';
import 'package:laptop_market/constants.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.icon,
    this.width = 35,
    this.height = 35,
    this.iconColor = kBlackColor,
    this.backgroundColor = kIconBackgroundColor,
    this.iconSize = 18,
    this.borderRadius = 10,
    required this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final double width;
  final double height;
  final Color iconColor;
  final Color backgroundColor;
  final double iconSize;
  final double borderRadius;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: iconSize,
          color: iconColor,
        ),
      ),
    );
  }
}
