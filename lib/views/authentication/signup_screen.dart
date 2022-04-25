import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:laptop_market/constants.dart';
import 'package:laptop_market/views/widgets/custom_checkbox.dart';
import 'package:laptop_market/views/widgets/custom_header.dart';
import 'package:laptop_market/views/widgets/custom_text_form_field.dart';
import 'package:laptop_market/views/widgets/buttons/rounded_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          padding: kPageContentPadding,
          child: Column(
            children: [
              const CustomHeader(title: "Sign Up"),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: kContenetCardDecoration,
                    padding: kContentCardPadding,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: const Text(
                            "Create Account",
                            style: kHeaderTextStyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25),
                          child: const Text(
                            'sign up to create a new account',
                            style: kNormalTextStyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: CustomTextFormFiled(
                            hintText: "E-mail",
                            prefixIcon: const Icon(
                              Icons.email_outlined,
                              color: kPrimaryColor,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            onSaved: (value) {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: CustomTextFormFiled(
                            hintText: "Password",
                            prefixIcon: const Icon(
                              Icons.lock_open,
                              color: kPrimaryColor,
                            ),
                            onSaved: (value) {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: [
                              CustomCheckbox(
                                labelWidget: Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: RichText(
                                    textAlign: TextAlign.left,
                                    text: TextSpan(
                                      style: kNormalTextStyle,
                                      children: [
                                        const TextSpan(
                                          text:
                                              'By clicking this, I agree to the ',
                                        ),
                                        TextSpan(
                                          text:
                                              'Terms & Conditions & Privacy Policy',
                                          style: kHyperLinkTextStyle,
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                value: false,
                                onChanged: (value) {},
                              ),
                            ],
                          ),
                        ),
                        RoundedButton(
                          text: 'Sign Up',
                          width: MediaQuery.of(context).size.width,
                          backgroundColor: kPrimaryColor,
                          onPressed: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                const TextSpan(
                                  text: 'Already have an account? ',
                                  style: kNormalTextStyle,
                                ),
                                TextSpan(
                                  text: 'Sign In',
                                  style: kHyperLinkTextStyle,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushNamed(context, '/login');
                                    },
                                ),
                              ],
                            ),
                          ),
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
