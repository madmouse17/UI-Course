import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_course/routers/routeName/routeName.dart';
import 'package:ui_course/view/Onboarding/Onboarding.dart';
import 'package:ui_course/view/components/com-onboard.dart';

class OnBoarding4 extends StatefulWidget {
  OnBoarding4({Key? key}) : super(key: key);

  @override
  State<OnBoarding4> createState() => _OnBoarding4State();
}

class _OnBoarding4State extends State<OnBoarding4> {
  @override
  Widget build(BuildContext context) {
    return ComponentOnboard(
      picture: "assets/On_Boarding_4.png",
      headerText: "Kesempatan Disalurkan Kerja",
      contentText:
          "Kamu berkesempatan disalurkan kerja di perusahaan rekanan Naf Academy",
      active: false,
      active2: false,
      active3: false,
      active4: true,
      nextPress: () {
        Get.toNamed(routeName.startingPage);
      },
      onBack: true,
      BackTap: () {
        OnBoarding.Slidercontroller.previousPage();
      },
    );
  }
}
