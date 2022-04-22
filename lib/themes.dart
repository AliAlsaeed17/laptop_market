import 'package:flutter/material.dart';
import 'package:laptop_market/constants.dart';

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: Colors.black,
  brightness: Brightness.dark,
  backgroundColor: Colors.blueGrey[900],
  fontFamily: 'Times New Roman',
  // primaryColor: Colors.white,
  // buttonTheme: ButtonThemeData(
  //   buttonColor: Colors.amber,
  //   disabledColor: Colors.grey,
  // ),
);

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: kBackgroundColor,
  brightness: Brightness.light,
  fontFamily: 'Times New Roman',
  backgroundColor: Colors.white,
  // primaryColor: Colors.blue,
  // buttonTheme: ButtonThemeData(
  //   buttonColor: Colors.blue,
  //   disabledColor: Colors.grey,
  // ),
);
