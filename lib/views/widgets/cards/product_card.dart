import 'package:flutter/material.dart';
import 'package:laptop_market/views/widgets/buttons/custom_icon_button.dart';
import '../../../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 2.5;
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
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
                width: width,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kCardBorderRadius),
                //TODO : need to config light/dark theme
                //color: kWhiteColor, in light theme
                color: Theme.of(context).cardColor,
              ),
              child: Column(
                children: [
                  Container(
                    child: const ListTile(
                      visualDensity: VisualDensity(vertical: -4),
                      contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
                      title: Text('ProArt StudioBook'),
                      subtitle: Text(
                        'Asus',
                        //TODO : need to config light/dark theme
                        //style: TextStyle(color: kBlackWithOpacity), in light theme
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
                            //TODO : need to config light/dark theme
                            //color: Colors.black, in light theme
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        CustomIconButton(
                          icon: Icons.arrow_forward_ios,
                          backgroundColor: Theme.of(context).bottomAppBarColor,
                          iconColor: Theme.of(context).iconTheme.color!,
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
