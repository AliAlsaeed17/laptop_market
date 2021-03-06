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
      //backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: kPageContentPadding,
          child: Column(
            children: [
              CustomHeader(
                title: "Home",
                trailingExist: true,
                trailingIcon: CustomIconButton(
                  icon: FontAwesomeIcons.search,
                  backgroundColor: Theme.of(context).backgroundColor,
                  iconColor: Theme.of(context).iconTheme.color!,
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: CustomSlider(
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
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Popular Products',
                            style: kSubHeaderTextStyle,
                          ),
                          TextButton(
                            onPressed: () => Get.toNamed('/popular'),
                            child: const Text(
                              'See All',
                              style: TextStyle(
                                  //TODO : need to config light/dark theme
                                  //color: kBlackWithOpacity, in light theme
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * .7,
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
