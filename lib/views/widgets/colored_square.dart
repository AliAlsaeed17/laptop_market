import 'package:flutter/material.dart';

class ColoredSquare extends StatelessWidget {
  ColoredSquare({Key? key, required this.color}) : super(key: key);
  Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10.0,
      height: 10.0,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.0),
          color: color,
        ),
      ),
    );
  }
}
