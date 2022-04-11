import 'package:get/get.dart';
import 'package:ui_course/routers/routeName/routeName.dart';
import 'package:ui_course/view/Login.dart';
import 'package:ui_course/view/Onboarding/Onboarding.dart';
import 'package:ui_course/view/Onboarding/Onboarding2.dart';
import 'package:ui_course/view/Onboarding/Onboarding3.dart';
import 'package:ui_course/view/Onboarding/Onboarding4.dart';
import 'package:ui_course/view/Onboarding/Welcome.dart';
import 'package:ui_course/view/Pages/BottomBar.dart';
import 'package:ui_course/view/Pages/DetailKelas.dart';
import 'package:ui_course/view/Pages/Home.dart';
import 'package:ui_course/view/register.dart';
import 'package:ui_course/view/verify-otp.dart';

class routes {
  static final pages = [
    GetPage(
      name: routeName.root,
      page: () => OnBoarding(),
    ),
    // GetPage(
    //   name: routeName.onBoarding2,
    //   page: () => OnBoarding2(),
    // ),
    // GetPage(
    //   name: routeName.onBoarding3,
    //   page: () => OnBoarding3(),
    // ),
    // GetPage(
    //   name: routeName.onBoarding4,
    //   page: () => OnBoarding4(),
    // ),
    GetPage(
      name: routeName.startingPage,
      page: () => const Welcome(),
    ),
    GetPage(
      name: routeName.login,
      page: () => const Login(),
    ),
    GetPage(
      name: routeName.register,
      page: () => const Register(),
    ),
    GetPage(
      name: routeName.otp,
      page: () => VerifyOTP(),
    ),
    GetPage(
      name: routeName.home,
      page: () => const Home(),
    ),
    GetPage(
      name: routeName.bottomBar,
      page: () => const BottomBar(),
    ),
    GetPage(
      name: routeName.detailKelas,
      page: () => DetailKelas(),
    )
  ];
}
