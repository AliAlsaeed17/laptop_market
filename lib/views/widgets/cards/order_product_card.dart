import 'package:flutter/material.dart';
import 'package:laptop_market/constants.dart';

class OrderProductCard extends StatelessWidget {
  const OrderProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kContentCardPadding,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(kCardBorderRadius),
      ),
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
          const SizedBox(width: 15.0),
          Expanded(
            flex: 7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'legion 920',
                      style: kSubHeaderTextStyle,
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      'Lenovo',
                      style:
                          kNormalTextStyle.copyWith(color: kBlackWithOpacity),
                    ),
                    const SizedBox(height: 15.0),
                    Text(
                      '\$980',
                      style: kSubHeaderTextStyle.copyWith(color: kGoldColor),
                    ),
                  ],
                ),
                const Text(
                  'x1',
                  style: kSubHeaderTextStyle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
