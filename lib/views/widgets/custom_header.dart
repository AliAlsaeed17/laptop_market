import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laptop_market/constants.dart';
import 'package:laptop_market/views/widgets/buttons/custom_icon_button.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    Key? key,
    required this.title,
    this.trailingExist = false,
    this.trailingIcon = const Icon(Icons.search),
  }) : super(key: key);

  final String title;
  final bool trailingExist;
  final Widget trailingIcon;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(vertical: height * .02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icons.arrow_back_ios,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              title,
              style: kHeaderTextStyle,
            ),
          ),
          trailingExist ? trailingIcon : Container(),
        ],
      ),
    );
  }
}
