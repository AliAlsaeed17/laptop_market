import 'package:flutter/material.dart';
import 'package:laptop_market/views/widgets/buttons/rounded_button.dart';
import 'package:laptop_market/views/widgets/custom_header.dart';
import 'package:laptop_market/views/widgets/custom_text_form_field.dart';

import '../../constants.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: Container(
        padding: kPageContentPadding,
        child: Column(
          children: [
            CustomHeader(title: 'Edit Profile'),
            SizedBox(height: 30.0),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  decoration: kContenetCardDecoration,
                  child: Padding(
                    padding: kContentCardPadding,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextFormFiled(
                          hintText: "New Name",
                          prefixIcon: const Icon(
                            Icons.person_outline,
                            color: kPrimaryColor,
                          ),
                          keyboardType: TextInputType.text,
                          onSaved: (value) {},
                        ),
                        SizedBox(height: 20.0),
                        CustomTextFormFiled(
                          hintText: "Phone Number",
                          prefixIcon: const Icon(
                            Icons.phone_outlined,
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
