import 'dart:convert';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ui_course/_partials/constant.dart';
import 'package:ui_course/_partials/mediaQuery.dart';
import 'package:ui_course/view/Pages/Home/HomeModels.dart';

class homeController extends GetxController {
  final CarouselController controller = CarouselController();
  RxInt current = 0.obs;
  RxBool wish = false.obs;
  List<Widget> cardList = [
    Container(
      width: mediaWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 114, 198, 247),
              primaryColor,
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Image.asset('assets/Home/Sale_Card.png'),
    ),
    Container(
      width: mediaWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 248, 243, 172),
              Color.fromARGB(255, 209, 195, 0),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Image.asset('assets/Home/Sale_Card.png'),
    ),
  ];

  // Fetch content from the json file
  Future<List<HomeModels>?> readJson() async {
    final String response =
        await rootBundle.loadString('assets/json/product-popular.json');
    return HomeModels.parseResponse(response);
  }
}
