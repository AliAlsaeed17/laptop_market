import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:laptop_market/constants.dart';
import 'package:laptop_market/views/widgets/custom_header.dart';
import 'package:laptop_market/views/widgets/buttons/custom_icon_button.dart';
import 'package:laptop_market/views/widgets/custom_slider.dart';
import 'package:laptop_market/views/widgets/cards/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: kPageContentPadding,
          child: Column(
            children: [
              CustomHeader(
                title: "Home",
                trailingExist: true,
                trailingIcon: CustomIconButton(
                  icon: FontAwesomeIcons.search,
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 35.0),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomSlider(
                        widgets: [
                          Image.asset(
                            'assets/images/2.jpg',
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'assets/images/3.jpg',
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Popular Products',
                            style: kSubHeaderTextStyle,
                          ),
                          TextButton(
                            onPressed: () => Get.toNamed('/popular'),
                            child: Text(
                              'See All',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.4),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 280,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return const ProductCard();
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              width: 15,
                            );
                          },
                        ),
                      ),
                    ],
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
