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
<<<<<<< HEAD
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
=======
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
>>>>>>> 356957936cd7d035e0f8c5acda52f01553bb035c
                                ),
                                value: false,
                                onChanged: (value) {},
                              ),
<<<<<<< HEAD
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
=======
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
>>>>>>> 356957936cd7d035e0f8c5acda52f01553bb035c
          ),
        ),
      ),
    );
  }
}
