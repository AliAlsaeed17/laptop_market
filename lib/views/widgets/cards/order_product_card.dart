import 'package:flutter/material.dart';
import 'package:laptop_market/constants.dart';

class OrderProductCard extends StatelessWidget {
  const OrderProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subHeaderTextStyle = Theme.of(context).textTheme.headlineMedium;
    return Container(
      padding: kContentCardPadding,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
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
                    //TODO: text colors
                    Text(
                      'ideapad 920 mx 720/16GB ssd 1TB',
                      style: subHeaderTextStyle,
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      'Lenovo',
                      style: subHeaderTextStyle!.copyWith(fontSize: 16.0),
                    ),
                    const SizedBox(height: 15.0),
                    Text(
                      '\$980',
                      style: subHeaderTextStyle.copyWith(color: kGoldColor),
                    ),
                  ],
                ),
                Text(
                  'x1',
                  style: kSubHeaderTextStyle.copyWith(color: kWhiteColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
