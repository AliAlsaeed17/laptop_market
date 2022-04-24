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
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
            //TODO: dark light theme colors
            backgroundColor: Theme.of(context).backgroundColor,
            iconColor: Theme.of(context).iconTheme.color!,
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
