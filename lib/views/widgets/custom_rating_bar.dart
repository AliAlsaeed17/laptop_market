import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRatingBar extends StatelessWidget {
  const CustomRatingBar(
      {Key? key,
      required this.itemCount,
      required this.reviewsCount,
      required this.icon,
      required this.onRatingUpdate})
      : super(key: key);

  final int itemCount;
  final int reviewsCount;
  final Widget icon;
  final void Function(double) onRatingUpdate;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RatingBar.builder(
            initialRating: 5,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: itemCount,
            itemSize: 20.0,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => icon,
            onRatingUpdate: onRatingUpdate),
        TextButton(
          onPressed: () {},
          child: Text(
            '$reviewsCount reviews >',
            style: TextStyle(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        )
      ],
    );
  }
}
