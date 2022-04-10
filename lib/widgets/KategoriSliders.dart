import 'package:flutter/material.dart';
import 'package:ui_course/_partials/mediaQuery.dart';
import 'package:ui_course/_partials/constant.dart';

class KategoriSlider extends StatelessWidget {
  const KategoriSlider({
    required this.text,
    required this.image,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  final String text;
  final String image;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, bottom: 25),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: primaryColor, blurRadius: 0.5, offset: Offset(1, 2.5))
          ]),
      child: GestureDetector(
        onTap: () => onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(image),
            Text(
              text,
              style: themeText.labelMedium!.copyWith(color: primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
