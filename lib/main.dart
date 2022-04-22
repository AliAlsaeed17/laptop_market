import 'package:flutter/material.dart';
import 'package:laptop_market/constants.dart';
import 'package:laptop_market/views/home_screen.dart';
import 'package:get/get.dart';
import 'package:laptop_market/views/popular_products_screen.dart';
import 'package:laptop_market/views/product_screen.dart';
import 'package:laptop_market/views/shopping_cart.dart';
import 'package:laptop_market/views/welcome_screen.dart';
import 'package:laptop_market/views/widgets/cards/product_card.dart';
import 'package:laptop_market/views/authentication/signup_screen.dart';
import 'package:laptop_market/views/checkout/checkout_screen.dart';
import 'package:laptop_market/views/checkout/payment_screen.dart';
import 'package:laptop_market/views/checkout/payment_success.dart';
import 'package:laptop_market/views/home_screen.dart';
import 'package:laptop_market/views/authentication/login_screen.dart';
import 'package:get/get.dart';
import 'package:laptop_market/views/popular_products_screen.dart';
import 'package:laptop_market/views/product_screen.dart';
import 'package:laptop_market/views/profile/edit_profile_screen.dart';
import 'package:laptop_market/views/profile/profile_screen.dart';
import 'package:laptop_market/views/profile/setting_screen.dart';
import 'package:laptop_market/views/profile/shipping_address.dart';
import 'package:laptop_market/views/shopping_cart.dart';
import 'package:laptop_market/themes.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Laptop Market',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: WelcomeScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/home': (context) => const HomeScreen(),
        '/popular': (context) => const PopularProductsScreen(),
        '/product': (context) => const ProductScreen(),
        '/shopping_cart': (context) => const ShoppingCart(),
        '/checkout': (context) => const CheckOutScreen(),
        '/payment': (context) => const PaymentScreen(),
        '/payment_success': (context) => const PaymentSuccessScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/edit_profile': (context) => const EditProfileScreen(),
        '/setting': (context) => SettingScreen(),
        '/address': (context) => const ShippingAddress(),
      },
    );
  }
}
