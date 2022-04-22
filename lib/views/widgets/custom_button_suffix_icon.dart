import 'package:flutter/material.dart';

class CustomButtonSuffixIcon extends StatelessWidget {
  const CustomButtonSuffixIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          color: Color(0xff333542),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Center(
                  child: Text(
                '\$500',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400),
              )),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Color(0xff474A5D),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Icon(
                    Icons.shopping_bag_rounded,
                    color: Colors.white,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
