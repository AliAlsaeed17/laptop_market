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
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(
        height: 166,
        widgets: Container(
          padding: kContentCardPadding,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Product Quantity', style: kSubHeaderTextStyle),
                  Text('5', style: kSubHeaderTextStyle),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total Price',
                    style: kSubHeaderTextStyle,
                  ),
                  Text(
                    '\$2.560',
                    style: kSubHeaderTextStyle.copyWith(color: kGoldColor),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              RoundedButton(
                text: 'Checkout',
                radius: 10.0,
                width: MediaQuery.of(context).size.width,
                backgroundColor: kPrimaryColor,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: kPageContentPadding,
          child: Column(
            children: [
              const CustomHeader(title: 'Card'),
              const SizedBox(height: 20.0),
              Container(
                height: 406,
                child: ListView.separated(
                  itemBuilder: (context, index) => const ShoppingProductCard(),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 12),
                  itemCount: 4,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
