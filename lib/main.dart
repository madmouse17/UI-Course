import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_course/_partials/SchemeColor.dart';
import 'package:ui_course/routers/routes.dart';
import 'package:ui_course/view/Onboarding/Onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Course',
      theme: ThemeData(
        primarySwatch: myColor,
      ),
      home: OnBoarding(),
      getPages: routes.pages,
    );
  }
}
