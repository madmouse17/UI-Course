import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_course/routers/routeName/routeName.dart';
import 'package:ui_course/view/Onboarding/Onboarding.dart';
import 'package:ui_course/view/components/com-onboard.dart';

class OnBoarding3 extends StatefulWidget {
  OnBoarding3({Key? key}) : super(key: key);

  @override
  State<OnBoarding3> createState() => _OnBoarding3State();
}

class _OnBoarding3State extends State<OnBoarding3> {
  @override
  Widget build(BuildContext context) {
    return ComponentOnboard(
      picture: "assets/On_Boarding_3.png",
      headerText: "Dapatkan Sertifikat",
      contentText:
          "Kamu akan mendapatkan sertifikat setelah menyelesaikan kelas yang akan menjadi nilai tambah ketika mendaftar kerja",
      active: false,
      active2: false,
      active3: true,
      active4: false,
      nextPress: () {
        OnBoarding.Slidercontroller.nextPage();
      },
      onBack: true,
      BackTap: () {
        OnBoarding.Slidercontroller.previousPage();
      },
    );
  }
}
