import 'package:flutter/material.dart';
import 'package:laptop_market/views/widgets/buttons/custom_icon_button.dart';
import 'package:laptop_market/views/widgets/buttons/rounded_icon_text_button.dart';
import 'package:laptop_market/views/widgets/colored_square.dart';
import 'package:laptop_market/views/widgets/custom_spinbox.dart';
import '../../../constants.dart';

class ShoppingProductCard extends StatelessWidget {
  const ShoppingProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(kCardBorderRadius),
      ),
      child: Padding(
        padding: kContentCardPadding,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: 90.0,
                height: 90.0,
                decoration: BoxDecoration(
                  color: kIconBackgroundColor,
                  borderRadius: BorderRadius.circular(kCardBorderRadius),
                ),
                child: Image.asset('assets/images/logo.png'),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              flex: 7,
              child: Column(
                children: [
                  Text(
                    'lenovo ideapad 920 mx 720/16GB ssd 1TB',
                    style: kSubHeaderTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Text(
                          '950\$',
                          style:
                              kSubHeaderTextStyle.copyWith(color: kGoldColor),
                        ),
                        const SizedBox(width: 7.0),
                        const Text('|'),
                        const SizedBox(width: 7.0),
                        ColoredSquare(color: Colors.black),
                        const SizedBox(width: 5.0),
                        Text(
                          'Black',
                          style: kSubHeaderTextStyle.copyWith(
                              color: kBlackWithOpacity),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      CustomIconButton(
                        backgroundColor: kDeleteColor,
                        borderRadius: 5.0,
                        icon: Icons.delete,
                        iconColor: kWhiteColor,
                        onPressed: () {},
                      ),
                      const SizedBox(width: 15),
                      const CustomSpinBox(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
