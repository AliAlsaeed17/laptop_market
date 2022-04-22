import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laptop_market/views/widgets/buttons/custom_icon_button.dart';
import '../../../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 2;
    return Container(
      width: width,
      height: width + (width * .6),
      decoration: BoxDecoration(
        color: kCardBackgroundColor,
        borderRadius: BorderRadius.circular(kCardBorderRadius),
      ),
      child: Column(
        children: [
          Padding(
            padding: kContentCardPadding,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(kCardBorderRadius),
              child: Image.asset(
                'assets/images/logo.png',
                width: double.infinity,
                height: width * .64,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kCardBorderRadius),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    child: ListTile(
                      visualDensity: const VisualDensity(vertical: -4),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 12.0),
                      title: const Text('ProArt StudioBook'),
                      subtitle: Text(
                        'Asus',
                        style: TextStyle(color: kBlackWithOpacity),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '200 \$',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        CustomIconButton(
                          icon: Icons.arrow_forward_ios,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}