import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:laptop_market/constants.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    Key? key,
    this.width = double.infinity,
    this.height = 200,
    this.initialPage = 0,
    this.indicatorColor = Colors.blue,
    this.indicatorBackgroundColor = Colors.grey,
    this.autoPlayInterval = 4000,
    this.isLoop = true,
    required this.widgets,
  }) : super(key: key);

  final double width;
  final double height;
  final int initialPage;
  final Color indicatorColor;
  final Color indicatorBackgroundColor;
  final int autoPlayInterval;
  final bool isLoop;
  final List<Widget> widgets;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(kCardBorderRadius),
      child: ImageSlideshow(
        width: width,
        height: height,
        initialPage: initialPage,
        indicatorColor: indicatorColor,
        indicatorBackgroundColor: indicatorBackgroundColor,
        autoPlayInterval: autoPlayInterval,
        isLoop: isLoop,
        children: widgets,
        onPageChanged: (b) => {},
      ),
    );
  }
}
