import 'package:flutter/material.dart';
import 'package:laptop_market/constants.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    Key? key,
    this.height = 100,
    required this.widgets,
  }) : super(key: key);
  final double height;
  final Widget widgets;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kBottomNavigationBarPadding,
      height: height,
      decoration: BoxDecoration(
        //Done
        //TODO : need to config light/dark theme
        // color: kCardBackgroundColor, in light mode
        color: Theme.of(context).bottomAppBarColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: widgets,
    );
  }
}
