import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laptop_market/constants.dart';
import 'package:laptop_market/views/widgets/buttons/rounded_button.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: kPageContentPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/success.png',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 15.0),
              const Text('Payment Success', style: kHeaderTextStyle),
              const SizedBox(height: 12.0),
              const Text(
                'Your payment was successful',
                style: kNormalTextStyle,
              ),
              const SizedBox(height: 25),
              RoundedButton(
                text: 'Back to Home',
                onPressed: () {
                  Get.back();
                },
                backgroundColor: kPrimaryColor,
                width: MediaQuery.of(context).size.width,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
