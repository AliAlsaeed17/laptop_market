import 'package:flutter/material.dart';
import 'package:laptop_market/constants.dart';
import 'package:laptop_market/views/widgets/buttons/rounded_button.dart';
import 'package:laptop_market/views/widgets/custom_navigation_bar.dart';
import 'package:laptop_market/views/widgets/cards/shopping_product_card.dart';
import 'widgets/custom_header.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subHeaderTextStyle = Theme.of(context).textTheme.headlineMedium;
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(
        height: 166,
        widgets: Container(
          padding: kContentCardPadding,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Product Quantity', style: subHeaderTextStyle),
                  Text('5', style: subHeaderTextStyle),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Price',
                    style: subHeaderTextStyle,
                  ),
                  Text(
                    '\$2.560',
                    style: subHeaderTextStyle!.copyWith(color: kGoldColor),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              RoundedButton(
                text: 'Checkout',
                radius: 10.0,
                width: MediaQuery.of(context).size.width,
                backgroundColor: kPrimaryColor,
                onPressed: () {
                  Navigator.pushNamed(context, '/checkout');
                },
              )
            ],
          ),
        ),
      ),
      //backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: kPageContentPadding,
          child: Column(
            children: [
              const CustomHeader(title: 'Card'),
              const SizedBox(height: 20.0),
              Container(
                padding: kContentCardPadding.copyWith(left: 10, right: 10),
                decoration: kContenetCardDecoration.copyWith(
                    color: Theme.of(context).backgroundColor),
                child: Container(
                  height: 406,
                  child: ListView.separated(
                    itemBuilder: (context, index) =>
                        const ShoppingProductCard(),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 12),
                    itemCount: 4,
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
