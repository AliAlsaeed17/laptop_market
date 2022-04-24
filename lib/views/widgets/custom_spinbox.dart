import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laptop_market/constants.dart';
import 'package:laptop_market/views/widgets/buttons/custom_icon_button.dart';

class CustomSpinBox extends StatelessWidget {
  const CustomSpinBox({Key? key, this.quantity = 1}) : super(key: key);

  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconButton(
          iconColor: kBlackWithOpacity,
          backgroundColor: kIconBackgroundColor,
          icon: FontAwesomeIcons.minus,
          borderRadius: 5.0,
          onPressed: () {},
        ),
        Container(
          width: 50.0,
          child: Center(
            child: Text(
              '$quantity',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
        CustomIconButton(
          backgroundColor: kButtonBackgroundColor,
          iconColor: kButtonTextColor,
          icon: FontAwesomeIcons.plus,
          borderRadius: 5.0,
          onPressed: () {},
        ),
      ],
    );
  }
}
