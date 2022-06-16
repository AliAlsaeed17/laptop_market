import 'package:flutter/material.dart';
import 'package:laptop_market/views/widgets/buttons/rounded_button.dart';
import 'package:laptop_market/views/widgets/custom_header.dart';
import 'package:laptop_market/views/widgets/custom_text_form_field.dart';

import '../../constants.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: Container(
        padding: kPageContentPadding,
        child: Column(
          children: [
            CustomHeader(title: 'Shipping Address'),
            SizedBox(height: 30.0),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  decoration: kContenetCardDecoration.copyWith(
                      color: Theme.of(context).backgroundColor),
                  child: Padding(
                    padding: kContentCardPadding,
                    child: Column(
                      children: [
                        CustomTextFormFiled(
                          hintText: "City",
                          prefixIcon: const Icon(
                            Icons.location_city_outlined,
                            color: kPrimaryColor,
                          ),
                          keyboardType: TextInputType.text,
                          onSaved: (value) {},
                        ),
                        SizedBox(height: 20.0),
                        CustomTextFormFiled(
                          hintText: "Street Name",
                          prefixIcon: const Icon(
                            Icons.add_location_outlined,
                            color: kPrimaryColor,
                          ),
                          keyboardType: TextInputType.text,
                          onSaved: (value) {},
                        ),
                        SizedBox(height: 20.0),
                        CustomTextFormFiled(
                          hintText: "Street Number",
                          prefixIcon: const Icon(
                            Icons.add_location_outlined,
                            color: kPrimaryColor,
                          ),
                          keyboardType: TextInputType.number,
                          onSaved: (value) {},
                        ),
                        SizedBox(height: 20.0),
                        RoundedButton(
                          text: 'Save',
                          width: double.infinity,
                          backgroundColor: Colors.blueAccent,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
