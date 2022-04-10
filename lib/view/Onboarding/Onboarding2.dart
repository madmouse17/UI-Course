import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_course/routers/routeName/routeName.dart';
import 'package:ui_course/view/Onboarding/Onboarding.dart';
import 'package:ui_course/view/components/com-onboard.dart';

class OnBoarding2 extends StatefulWidget {
  OnBoarding2({Key? key}) : super(key: key);

  @override
  State<OnBoarding2> createState() => _OnBoarding2State();
}

class _OnBoarding2State extends State<OnBoarding2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ComponentOnboard(
        picture: "assets/On_Boarding_2.png",
        headerText: "Akses Materi Kapan Saja",
        contentText:
            "Kamu dapat belajar kapan saja dan dimana saja tanpa batas",
        active: false,
        active2: true,
        active3: false,
        active4: false,
        nextPress: () {
          OnBoarding.Slidercontroller.nextPage();
        },
        onBack: true,
        BackTap: () {
          OnBoarding.Slidercontroller.previousPage();
        },
      ),
    );
  }
}
