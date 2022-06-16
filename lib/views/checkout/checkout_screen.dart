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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      //backgroundColor: kBackgroundColor,
      bottomNavigationBar: CustomNavigationBar(
        widgets: Padding(
          padding: kBottomNavigationBarPadding,
          child: RoundedButton(
            text: 'Go to Payment',
            onPressed: () {
              Get.toNamed('/payment');
            },
            backgroundColor: kPrimaryColor,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: width,
          height: height,
          padding: kPageContentPadding,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: height * .04),
                child: CustomHeader(title: 'Check Out'),
              ),
              Expanded(
                child: Container(
                  decoration: kContenetCardDecoration.copyWith(
                    color: Theme.of(context).backgroundColor,
                  ),
                  padding: kContentCardPadding,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: height * .02),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: height * .03),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'Shipping Address',
                                      style: kSubHeaderTextStyle,
                                    ),
                                    RoundedButton(
                                      text: 'Edit',
                                      radius: 5,
                                      width: width * .1,
                                      height: height * .045,
                                      textStyle:
                                          const TextStyle(color: kPrimaryColor),
                                      backgroundColor: kCardBackgroundColor,
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: width * .02),
                                    child: IconCard(
                                      icon: Icon(
                                        Icons.location_on_outlined,
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: height * .01),
                                        child: Text(
                                          'Jelly Grande',
                                          //TODO : need to config light/dark theme
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: height * .01),
                                        child: Text(
                                          '+62 123 456 78',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom: height * .01),
                                        child: Text(
                                          '871 kengan street(between jones Levanscwoth st) San Francisco',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: height * .01),
                          child: Column(children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: height * .022),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Order Summary',
                                    style: kSubHeaderTextStyle,
                                  ),
                                  RoundedButton(
                                    text: 'Edit',
                                    radius: 5,
                                    width: width * .1,
                                    height: height * .045,
                                    textStyle:
                                        const TextStyle(color: kPrimaryColor),
                                    backgroundColor: kCardBackgroundColor,
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: height * .7,
                              child: ListView.separated(
                                itemBuilder: (context, index) =>
                                    OrderProductCard(),
                                separatorBuilder: (context, index) =>
                                    SizedBox(height: height * .025),
                                itemCount: 4,
                              ),
                            ),
                          ]),
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
