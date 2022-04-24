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
    final subHeaderTextStyle = Theme.of(context).textTheme.headlineMedium;
    return Container(
      decoration: BoxDecoration(
        //TODO : need to config light/dark theme
        //color: kWhiteColor, in light mode
        //color: Colors.blueGrey[900],
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(kCardBorderRadius),
      ),
      child: Padding(
        padding: kContentCardPadding.copyWith(left: 10, right: 10),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: 90.0,
                height: 90.0,
                decoration: BoxDecoration(
                  //TODO : need to config light/dark theme
                  //color: kIconBackgroundColor, in light mode
                  //color: Colors.blueGrey[600],
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
                    style: subHeaderTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Text(
                          '950\$',
                          style:
                              subHeaderTextStyle!.copyWith(color: kGoldColor),
                        ),
                        const SizedBox(width: 7.0),
                        const Text('|'),
                        const SizedBox(width: 7.0),
                        ColoredSquare(color: Colors.black),
                        const SizedBox(width: 5.0),
                        Text(
                          'Black',
                          //TODO : need to config light/dark theme
                          // color: kBlackWithOpacity , in light mode
                          style:
                              subHeaderTextStyle.copyWith(color: kBlackColor),
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
