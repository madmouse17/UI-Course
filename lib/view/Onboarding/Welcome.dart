import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';
import 'package:ui_course/routers/routeName/routeName.dart';
import 'package:ui_course/_partials/constant.dart';

class Welcome extends StatelessWidget {
  const Welcome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaHeight = MediaQuery.of(context).size.height;
    var mediaWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          color: primaryColor,
        ),
        Container(
          width: mediaWidth,
          height: mediaHeight,
          // color: Colors.blue,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Starting_Page.png"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Image.asset("assets/Starting_Page.png"),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: mediaHeight * 0.02,
                      ),
                      AutoSizeText(
                        "Selamat Datang",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: mediaHeight * 0.035,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: mediaHeight * 0.02,
                      ),
                      Container(
                        width: mediaWidth / 1.2,
                        child: AutoSizeText(
                          "Temukan kelas favorit kamu dan tingkatkan skill digital kamu bersama    Naf Academy",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: mediaHeight * 0.02),
                          maxLines: 3,
                        ),
                      ),
                      SizedBox(
                        height: mediaHeight * 0.03,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          print('cek');
                          Get.toNamed(routeName.login);
                        },
                        child: Text("Mulai Sekarang"),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(mediaWidth, mediaHeight * 0.06),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
