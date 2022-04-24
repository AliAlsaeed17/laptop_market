import 'package:flutter/material.dart';
import 'package:laptop_market/constants.dart';

// backgroundColor for container background
// cardColor for all cards background
ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: kBlackColor,
  bottomAppBarColor: Colors.blueGrey[900],
  brightness: Brightness.dark,
  backgroundColor: Colors.blueGrey[900],
  cardColor: Colors.blueGrey[600],
  fontFamily: 'Roboto',
  iconTheme: const IconThemeData(color: kLightWhite),
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: kBlackColor,
    hintStyle: TextStyle(color: kLightWhite),
  ),
  textTheme: TextTheme(
    headlineMedium: kSubHeaderTextStyle.copyWith(
      color: kLightWhite,
    ),
    bodyMedium: kNormalTextStyle.copyWith(color: kLightWhite),
  ),
);

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: kBackgroundColor,
  bottomAppBarColor: kCardBackgroundColor,
  brightness: Brightness.light,
  cardColor: kBackgroundColor,
  //iconTheme: const IconThemeData(color: kPrimaryColor),
  fontFamily: 'Roboto',
  backgroundColor: kWhiteColor,
  inputDecorationTheme: const InputDecorationTheme(
    fillColor: kBackgroundColor,
  ),
  textTheme: const TextTheme(
    headlineMedium: kSubHeaderTextStyle,
    bodyMedium: kNormalTextStyle,
  ),

  // primaryColor: Colors.blue,
  // buttonTheme: ButtonThemeData(
  //   buttonColor: Colors.blue,
  //   disabledColor: Colors.grey,
  // ),
);
