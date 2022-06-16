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
      //backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: kPageContentPadding,
            child: Column(
              children: [
                const CustomHeader(title: "Sign Up"),
                const SizedBox(height: 45.0),
                Container(
                  decoration: kContenetCardDecoration.copyWith(
                      color: Theme.of(context).backgroundColor),
                  child: Padding(
                    padding: kContentCardPadding,
                    child: Column(children: [
                      const Text(
                        "Create Account",
                        style: kHeaderTextStyle,
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'sign up to create a new account',
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
                      const SizedBox(height: 15.0),
                      CustomTextFormFiled(
                        hintText: "Password",
                        prefixIcon: const Icon(
                          Icons.lock_open,
                          color: kPrimaryColor,
                        ),
                        isPassword: true,
                        onSaved: (value) {},
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        children: [
                          CustomCheckbox(
                            labelWidget: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: RichText(
                                textAlign: TextAlign.left,
                                text: TextSpan(
                                  //TODO : need to config light/dark theme
                                  style: kNormalTextStyle,
                                  children: [
                                    TextSpan(
                                      text: 'By clicking this, I agree to the ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(fontSize: 14.0),
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
                      const SizedBox(height: 15),
                      RoundedButton(
                        text: 'Sign Up',
                        width: MediaQuery.of(context).size.width,
                        backgroundColor: kPrimaryColor,
                        onPressed: () {},
                      )
                    ]),
                  ),
                ),
                const SizedBox(height: 20),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        //TODO : need to config light/dark theme
                        text: 'Already have an account? ',
                        style: Theme.of(context).textTheme.bodyMedium,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
