import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:laptop_market/constants.dart';
import 'package:laptop_market/views/home_screen.dart';
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
      //backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: kPageContentPadding,
            child: Column(
              children: [
                const CustomHeader(title: "Sign In"),
                const SizedBox(height: 45),
                Container(
                  decoration: kContenetCardDecoration.copyWith(
                      color: Theme.of(context).backgroundColor),
                  child: Padding(
                    padding: kContentCardPadding,
                    child: Column(
                      children: [
                        const Text(
                          "Welcome Back!",
                          style: kHeaderTextStyle,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'sign in to continue',
                          style: kNormalTextStyle,
                        ),
                        const SizedBox(height: 25),
                        CustomTextFormFiled(
                          hintText: "E-mail",
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                            color: kPrimaryColor,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          onSaved: (value) {},
                        ),
                        const SizedBox(height: 15),
                        CustomTextFormFiled(
                          hintText: "Password",
                          prefixIcon: const Icon(
                            Icons.lock_open,
                            color: kPrimaryColor,
                          ),
                          isPassword: true,
                          onSaved: (value) {},
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomCheckbox(
                              labelWidget: RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                  //TODO : need to config light/dark theme
                                  //style: const TextStyle(color: Colors.black), in light mode
                                  children: [
                                    TextSpan(
                                      text: 'Remember me',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
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
                        RoundedButton(
                          text: "Sign In",
                          backgroundColor: kPrimaryColor,
                          width: MediaQuery.of(context).size.width,
                          onPressed: () {},
                        ),
                        const SizedBox(height: 10.0),
                        const Text(
                          'Or',
                          style: kNormalTextStyle,
                        ),
                        const SizedBox(height: 10.0),
                        Row(
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
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    //TODO : need to config light/dark theme
                    //style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Don\'t have an account? ',
                        style: Theme.of(context).textTheme.bodyMedium,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
