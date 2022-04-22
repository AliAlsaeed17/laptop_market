import 'package:flutter/material.dart';
import 'package:laptop_market/constants.dart';

class PaymentCard extends StatelessWidget {
  PaymentCard(
      {Key? key, this.path = 'assets/images/PayPal-Logo.png', this.onTap})
      : super(key: key);
  String path;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 200,
        height: 100,
        child: Image.asset(path),
      ),
      onTap: onTap,
    );
  }
}
