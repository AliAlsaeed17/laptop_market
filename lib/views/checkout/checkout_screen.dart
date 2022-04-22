import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laptop_market/constants.dart';
import 'package:laptop_market/views/widgets/buttons/rounded_button.dart';
import 'package:laptop_market/views/widgets/custom_header.dart';
import 'package:laptop_market/views/widgets/custom_navigation_bar.dart';
import 'package:laptop_market/views/widgets/cards/icon_card.dart';
import 'package:laptop_market/views/widgets/cards/order_product_card.dart';
import 'package:laptop_market/views/widgets/cards/shopping_product_card.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      bottomNavigationBar: CustomNavigationBar(
        widgets: Padding(
          padding: kBottomNavigationBarPadding.copyWith(top: 25, bottom: 15),
          child: RoundedButton(
            text: 'Go to Payment',
            height: 20,
            onPressed: () {
              Get.toNamed('/payment');
            },
            backgroundColor: kPrimaryColor,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: kPageContentPadding,
          child: Column(
            children: [
              const CustomHeader(title: 'Check Out'),
              const SizedBox(height: 20),
              Expanded(
                child: Container(
                  decoration: kContenetCardDecoration,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Shipping Address',
                              style: kSubHeaderTextStyle,
                            ),
                            RoundedButton(
                              text: 'Edit',
                              radius: 5,
                              width: 70,
                              height: 32,
                              textStyle: const TextStyle(color: kPrimaryColor),
                              backgroundColor: kCardBackgroundColor,
                              onPressed: () {},
                            ),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const IconCard(
                              icon: Icon(
                                Icons.location_on_outlined,
                                color: kPrimaryColor,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Jelly Grande',
                                  style: kNormalTextStyle.copyWith(
                                      color: kBlackWithOpacity),
                                ),
                                const SizedBox(height: 7.0),
                                Text(
                                  '+62 123 456 78',
                                  style: kNormalTextStyle.copyWith(
                                      color: kBlackWithOpacity),
                                ),
                                const SizedBox(height: 7.0),
                                // RichText(
                                //   textAlign: TextAlign.left,
                                //   text: const TextSpan(children: [
                                //     TextSpan(
                                //       text:
                                //           '871 kengan street(between jones Levanscwoth st) San Francisco ',
                                //     )
                                //   ]),
                                // )
                                Text(
                                  '871 kengan street(between jones &\n Levanscwoth st) San Francisco ',
                                  style: kNormalTextStyle.copyWith(
                                      color: kBlackWithOpacity),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Order Summary',
                              style: kSubHeaderTextStyle,
                            ),
                            RoundedButton(
                              text: 'Edit',
                              radius: 5,
                              width: 70,
                              height: 32,
                              textStyle: const TextStyle(color: kPrimaryColor),
                              backgroundColor: kCardBackgroundColor,
                              onPressed: () {},
                            ),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Container(
                          height: 276,
                          child: ListView.separated(
                            itemBuilder: (context, index) => OrderProductCard(),
                            separatorBuilder: (context, index) =>
                                SizedBox(height: 12),
                            itemCount: 4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
