import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laptop_market/constants.dart';
import 'package:laptop_market/views/widgets/custom_checkbox.dart';
import 'package:laptop_market/views/widgets/custom_header.dart';
import 'package:laptop_market/views/widgets/custom_text_form_field.dart';
import 'package:laptop_market/views/widgets/buttons/rounded_button.dart';

import '../widgets/buttons/rounded_icon_text_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: kPageContentPadding,
            child: Column(
              children: [
                const CustomHeader(title: "Sign In"),
                Container(
                  decoration: kContenetCardDecoration,
                  child: Padding(
                    padding: kContentCardPadding,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: const Text(
                            "Welcome Back!",
                            style: kSubHeaderTextStyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 25),
                          child: const Text(
                            'sign in to continue',
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
                          padding: const EdgeInsets.only(bottom: 5),
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
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomCheckbox(
                                labelWidget: RichText(
                                  textAlign: TextAlign.left,
                                  text: TextSpan(
                                    style: const TextStyle(color: Colors.black),
                                    children: [
                                      TextSpan(
                                        text: 'Remember me',
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {},
                                      ),
                                    ],
                                  ),
                                ),
                                value: false,
                                onChanged: (value) {},
                              ),
                              InkWell(
                                onTap: () => {},
                                child: const Text(
                                  'Forgot Password?',
                                  style: kHyperLinkTextStyle,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: RoundedButton(
                            text: "Sign In",
                            backgroundColor: kPrimaryColor,
                            width: MediaQuery.of(context).size.width,
                            onPressed: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: const Text(
                            'Or',
                            style: kNormalTextStyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: RoundedIconButton(
                                  icon: const Icon(FontAwesomeIcons.facebook),
                                  text: "Facebook",
                                  textColor: kButtonTextColor,
                                  backgroundColor: kPrimaryColor,
                                  onPressed: () {},
                                ),
                              ),
                              Expanded(
                                child: RoundedIconButton(
                                  icon: const Icon(FontAwesomeIcons.google),
                                  text: "Google",
                                  textColor: kButtonTextColor,
                                  backgroundColor: kDeleteColor,
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black),
                      children: [
                        const TextSpan(
                          text: 'Don\'t have an account? ',
                        ),
                        TextSpan(
                          text: 'Sign Up',
                          style: const TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, '/signup');
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
    );
  }
}
