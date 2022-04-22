import 'package:flutter/material.dart';
import 'package:laptop_market/constants.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {Key? key,
      required this.title,
      this.leading = const Icon(Icons.circle),
      this.leadingExist = false,
      this.trailing = const Icon(Icons.arrow_forward_ios),
      this.rightPadding = 10,
      required this.onTap})
      : super(key: key);

  final String title;
  final Widget leading;
  final bool leadingExist;
  final Widget trailing;
  final double rightPadding;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kListTilePadding,
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                leadingExist
                    ? Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: const BoxDecoration(
                          color: kCardBackgroundColor,
                          shape: BoxShape.circle,
                        ),
                        child: leading,
                      )
                    : Container(),
                const SizedBox(width: 18.0),
                Text(
                  title,
                  style: kFontSize18Weight500,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(right: rightPadding),
              child: trailing,
            ),
          ],
        ),
      ),
    );
  }
}
