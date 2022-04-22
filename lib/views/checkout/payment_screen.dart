import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laptop_market/constants.dart';
import 'package:laptop_market/views/widgets/buttons/rounded_button.dart';
import 'package:laptop_market/views/widgets/cards/payment_card.dart';
import 'package:laptop_market/views/widgets/custom_header.dart';
import 'package:laptop_market/views/widgets/buttons/rounded_button.dart';
import 'package:laptop_market/views/widgets/custom_navigation_bar.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      bottomNavigationBar: CustomNavigationBar(
        widgets: Padding(
          padding: kBottomNavigationBarPadding.copyWith(top: 25, bottom: 15),
          child: RoundedButton(
            text: 'Confirm Payment',
            onPressed: () {
              Get.toNamed('/payment_success');
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
              CustomHeader(title: 'Payment'),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: kContenetCardDecoration,
                padding: kContentCardPadding,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    PaymentCard(onTap: () => print('paypal')),
                    PaymentCard(
                        path: 'assets/images/syriatel.jpg',
                        onTap: () => print('syriatel')),
                    const SizedBox(
                      height: 20.0,
                    ),
                    PaymentCard(
                        path: 'assets/images/mtn.jpg',
                        onTap: () => print('mtn')),
                    const SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
