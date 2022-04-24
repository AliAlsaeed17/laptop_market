import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laptop_market/constants.dart';

import 'widgets/buttons/custom_icon_button.dart';
import 'widgets/cards/payment_card.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  int amount = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                PaymentCard(onTap: () => print('paypal')),
                PaymentCard(
                    path: 'assets/images/syriatel.jpg',
                    onTap: () => print('syriatel')),
                const SizedBox(
                  height: 20.0,
                ),
                PaymentCard(
                    path: 'assets/images/mtn.jpg', onTap: () => print('mtn')),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
