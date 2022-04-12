import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ui_course/view/Pages/Home/HomeModels.dart';

class dkController extends GetxController {
  var data = {}.obs;
  @override
  onInit() async {
    await getProduct();
    super.onInit();
  }

  // Fetch content from the json file
  getProduct() async {
    final String response =
        await rootBundle.loadString('assets/json/product-popular.json');
    var b = HomeModels.find(response, Get.arguments);
    await b.forEach((element) => data.value = element);
  }
}
