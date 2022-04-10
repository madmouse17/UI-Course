import 'package:flutter/material.dart';
import 'package:ui_course/_partials/mediaQuery.dart';

class HeadTextList extends StatelessWidget {
  const HeadTextList({
    required this.text,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  final String text;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: themeText.headline6,
        ),
        GestureDetector(
          onTap: () => onTap,
          child: Row(
            children: [
              Text(
                "Lihat Semua",
                style: themeText.labelLarge!.copyWith(
                  color: Colors.blueAccent,
                ),
              ),
              Icon(
                Icons.arrow_right,
                color: Colors.blueAccent,
              )
            ],
          ),
        ),
      ],
    );
  }
}
