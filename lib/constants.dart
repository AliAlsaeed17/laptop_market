import 'package:flutter/material.dart';
import 'package:get/get.dart';

//Colors
const kPrimaryColor = Color(0xff4B75E9);
const kBackgroundColor = Color(0xffF9F9FB);
const kCardBackgroundColor = Color(0xffEEEFF3);
const kIconBackgroundColor = Color(0xffE3E4E8);
const kButtonBackgroundColor = Color(0xff333542);
const kButtonTextColor = Colors.white;
const kGoldColor = Color.fromRGBO(253, 216, 53, 1);
const kWhiteColor = Colors.white;
const kBlackColor = Colors.black;
const kDeleteColor = Color.fromARGB(209, 244, 67, 54);
const kBlackWithOpacity = Colors.black38;

//Font Styles
const kHeaderTextStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: kPrimaryColor,
);
const kSubHeaderTextStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.w500,
  color: kPrimaryColor,
);
const kNormalTextStyle = TextStyle(fontSize: 15.0, color: Colors.black);
const kHyperLinkTextStyle = TextStyle(
  fontSize: 15.0,
  color: Colors.blue,
);
const kButtonTextStyle = TextStyle(color: kButtonTextColor, fontSize: 16);
const kWelcomeButtonTextStyle = TextStyle(color: kPrimaryColor, fontSize: 20);

//Paddings
const kPageContentPadding = EdgeInsets.only(top: 25, right: 25, left: 25);
const kContentCardPadding = EdgeInsets.symmetric(horizontal: 15, vertical: 25);
const kBottomNavigationBarPadding = EdgeInsets.symmetric(horizontal: 15.0);
const kListTilePadding = EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0);
const kListTileContainerPadding = EdgeInsets.only(top: 10);
const kDividerPadding = EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0);

//Decorations
const kContenetCardDecoration = BoxDecoration(
  borderRadius: BorderRadius.all(
    Radius.circular(20),
  ),
  //  color: Theme.of(context),
);

//Borders
const kTextFormFieldBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(20.0)),
  borderSide: BorderSide.none,
);

const kProfilePhotoBorder = Border(
  top: kCircularBorderSide,
  bottom: kCircularBorderSide,
  right: kCircularBorderSide,
  left: kCircularBorderSide,
);

//Border Radius
const kCardBorderRadius = 15.0;
const kProfilePhotoBorderRadius = 50.0;

//Border Sides
const kCircularBorderSide = BorderSide(
  color: Colors.black,
  width: 2.0,
);

//Images
const String kAppLogoImage = 'assets/images/logo.png';
const String kWelcomeScreenLogoImage = 'assets/images/logo1.png';

const kFontSize18Weight500 =
    TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500);
const kFontSize15Weight500 =
    TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500);

//Arrays
const kProfileSettignsList = [
  {'title': 'Edit Profile', 'leading': Icons.edit_outlined},
  {'title': 'Settings', 'leading': Icons.settings_outlined},
  {'title': 'Shipping Address', 'leading': Icons.location_on_outlined},
  {'title': 'Order History', 'leading': Icons.watch_later_outlined},
];
