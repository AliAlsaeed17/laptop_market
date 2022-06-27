import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laptop_market/constants.dart';
import 'package:laptop_market/views/widgets/custom_header.dart';
import 'package:laptop_market/views/widgets/custom_navigation_bar.dart';
import 'package:laptop_market/views/widgets/custom_rating_bar.dart';
import 'widgets/custom_spinbox.dart';
import 'widgets/buttons/rounded_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firestoreInstance = FirebaseFirestore.instance;

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  getData() {
    _firestoreInstance.collection('products').get().then((value) {
      value.docs.forEach((element) {
        print(element.data());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(
        widgets: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              flex: 2,
              child: CustomSpinBox(
                quantity: 1,
              ),
            ),
            Expanded(
              flex: 2,
              child: RoundedButton(
                text: '\$500',
                radius: 10.0,
                onPressed: () {
                  getData();
                },
                backgroundColor: kPrimaryColor,
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          //color: kCardBackgroundColor,
          child: Column(
            children: [
              const Padding(
                padding: kPageContentPadding,
                child: CustomHeader(
                  title: 'Lenovo yoga 920',
                  trailingExist: true,
                  trailingIcon: Icon(
                    FontAwesomeIcons.heart,
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: ImageSlideshow(
                              children: [
                                Image.asset(
                                  'assets/images/logo.png',
                                  fit: BoxFit.cover,
                                ),
                                Image.asset(
                                  'assets/images/logo.png',
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: kPageContentPadding,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Lenovo yoga 920 13/core i7/16GGB/SSD 1TB',
                              style: kSubHeaderTextStyle,
                            ),
                            const SizedBox(height: 6.0),
                            CustomRatingBar(
                              itemCount: 5,
                              reviewsCount: 120,
                              icon: const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                            ),
                            const SizedBox(height: 10.0),
                            Divider(
                              color:
                                  Theme.of(context).textTheme.bodyMedium!.color,
                            ),
                            const SizedBox(height: 10.0),
                            const Text(
                              'Description',
                              style: kSubHeaderTextStyle,
                            ),
                            const SizedBox(height: 10.0),
                            const Text(
                              '8th Gen Intel Core i7-8550U mobile processor; 8GB system memory; 256GB solid state drive (SSD); Intel UHD Graphics 62013.9" touch screen for hands-on control; 1920 x 1080 native resolution. IPS technology. LED backlight.Windows 10 Home operating system; Built for Windows Ink, Lenovo\'s Active Pen 2 stylus included360° flip-and-fold design; Weighs 3.02 lbs. and measures 0.5" thin; 4-cell lithium-ion battery;',
                              style: kNormalTextStyle,
                            ),
                            const SizedBox(height: 10.0),
                            Divider(
                              color:
                                  Theme.of(context).textTheme.bodyMedium!.color,
                            ),
                            const SizedBox(height: 10.0),
                            const Text(
                              'Specifications',
                              style: kSubHeaderTextStyle,
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              'Processor: Core i7-8550U mobile processor',
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              'Memory: 8GB DDR4',
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              'Storage: 256GB solid state drive (SSD)',
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              'Screen: 1920 x 1080 native resolution LED',
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              'Battery: 4400 mAh',
                            )
                          ],
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
