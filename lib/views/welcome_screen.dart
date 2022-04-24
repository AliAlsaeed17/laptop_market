import 'package:flutter/material.dart';
import 'package:laptop_market/constants.dart';
import 'widgets/buttons/rounded_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(width * .1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Image.asset(kWelcomeScreenLogoImage),
            ),
            Expanded(
              child: LayoutBuilder(
                builder: (context, cons) => Container(
                  padding: EdgeInsets.symmetric(vertical: cons.maxHeight * .28),
                  child: Text(
                    'Laptop Market',
                    textAlign: TextAlign.center,
                    style: kHeaderTextStyle.copyWith(color: kWhiteColor),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: LayoutBuilder(
                builder: (context, cons) => Container(
                  width: cons.maxWidth * .7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundedButton(
                        text: 'Sign In',
                        textStyle: kWelcomeButtonTextStyle,
                        width: cons.maxWidth,
                        onPressed: () =>
                            {Navigator.pushNamed(context, '/login')},
                      ),
                      RoundedButton(
                        text: 'Sign Up',
                        textStyle: kWelcomeButtonTextStyle,
                        width: cons.maxWidth,
                        onPressed: () =>
                            {Navigator.pushNamed(context, '/signup')},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
