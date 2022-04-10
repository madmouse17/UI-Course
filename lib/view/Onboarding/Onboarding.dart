import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_course/_partials/mediaQuery.dart';
import 'package:ui_course/routers/routeName/routeName.dart';
import 'package:ui_course/view/Onboarding/Onboarding2.dart';
import 'package:ui_course/view/Onboarding/Onboarding3.dart';
import 'package:ui_course/view/Onboarding/Onboarding4.dart';
import 'package:ui_course/view/components/com-onboard.dart';
import 'package:carousel_slider/carousel_slider.dart';

class OnBoarding extends StatefulWidget {
  OnBoarding({Key? key}) : super(key: key);
  static CarouselController Slidercontroller = CarouselController();
  static List<Widget> onboard = [
    Onboard1(),
    OnBoarding2(),
    OnBoarding3(),
    OnBoarding4()
  ];
  static int current = 0;
  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  String reason = '';

  // void onPageChange(int index, CarouselPageChangedReason changeReason) {
  //   setState(() {
  //     reason = changeReason.toString();
  //   });
  //   print(reason);
  // }

  // ignore: prefer_final_fields

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CarouselSlider(
      items: OnBoarding.onboard,
      carouselController: OnBoarding.Slidercontroller,
      options: CarouselOptions(
          height: mediaHeight,
          enableInfiniteScroll: false,
          initialPage: 0,
          // autoPlay: true,
          // enlargeCenterPage: true,
          // aspectRatio: 2.0,
          viewportFraction: 1,
          onPageChanged: (index, reason) {
            setState(() {
              OnBoarding.current = index;
            });
          }),
    ));
  }
}

class Onboard1 extends StatefulWidget {
  // final dynamic index;

  const Onboard1({
    // required this.index,
    Key? key,
  }) : super(key: key);

  @override
  State<Onboard1> createState() => _Onboard1State();
}

class _Onboard1State extends State<Onboard1> {
  @override
  Widget build(BuildContext context) {
    return ComponentOnboard(
      picture: "assets/On_Boarding_1.png",
      headerText: "Belajar Dari Ahlinya",
      contentText:
          "Kami menyediakan mentor yang sangat berpengalaman di bidangnya",
      active: true,
      active2: false,
      active3: false,
      active4: false,
      nextPress: () {
        OnBoarding.Slidercontroller.nextPage();
      },
      onBack: false,
    );
  }
}
