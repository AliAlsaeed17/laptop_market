import 'package:flutter/material.dart';
import 'package:laptop_market/constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.icon,
    this.width = 40,
    this.height = 40,
    this.shape = BoxShape.circle,
    this.backgroundColor = kCardBackgroundColor,
  }) : super(key: key);

  final Icon icon;
  final double width;
  final double height;
  final BoxShape shape;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: shape,
      ),
      child: icon,
    );
  }
}
