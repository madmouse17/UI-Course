import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:get/get.dart';
import 'package:ui_course/routers/routeName/routeName.dart';
import 'package:ui_course/view/Onboarding/Onboarding.dart';
import 'package:ui_course/_partials/constant.dart';

class ComponentOnboard extends StatelessWidget {
  const ComponentOnboard({
    required this.contentText,
    required this.headerText,
    required this.active,
    required this.active2,
    required this.active3,
    required this.active4,
    required this.picture,
    // required this.skipPress,
    required this.nextPress,
    this.BackTap,
    required this.onBack,
    Key? key,
  }) : super(key: key);
  final String headerText;
  final String contentText;
  final bool active;
  final bool active2;
  final bool active3;
  final bool active4;
  final String picture;
  // final void Function() skipPress;
  final void Function() nextPress;
  final VoidCallback? BackTap;
  final bool onBack;

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
            image:
                DecorationImage(image: AssetImage(picture), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Image.asset(picture),
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
                        height: mediaHeight * 0.015,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: mediaHeight * 0.02,
                            width: mediaWidth * 0.02,
                            decoration: BoxDecoration(
                              color: (active)
                                  ? Colors.blue
                                  : Color.fromARGB(255, 197, 223, 245),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            height: mediaHeight * 0.02,
                            width: mediaWidth * 0.02,
                            decoration: BoxDecoration(
                              color: (active2)
                                  ? Colors.blue
                                  : Color.fromARGB(255, 197, 223, 245),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            height: mediaHeight * 0.02,
                            width: mediaWidth * 0.02,
                            decoration: BoxDecoration(
                              color: (active3)
                                  ? Colors.blue
                                  : Color.fromARGB(255, 197, 223, 245),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(
                            height: mediaHeight * 0.02,
                            width: mediaWidth * 0.02,
                            decoration: BoxDecoration(
                              color: (active4)
                                  ? Colors.blue
                                  : Color.fromARGB(255, 197, 223, 245),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: mediaHeight * 0.02,
                      ),
                      AutoSizeText(
                        headerText,
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
                      Text(
                        contentText,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: mediaHeight * 0.02),
                      ),
                      SizedBox(
                        height: mediaHeight * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () =>
                                Get.toNamed(routeName.startingPage),
                            child: Text(
                              "Lewati",
                              style: TextStyle(color: Colors.blue),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              minimumSize:
                                  Size(mediaWidth * 0.4, mediaHeight * 0.06),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: nextPress,
                            child: Text("Lanjut"),
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  Size(mediaWidth * 0.4, mediaHeight * 0.06),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        if (onBack)
          Positioned(
            top: mediaHeight * 0.06,
            left: mediaWidth * 0.033,
            child: InkWell(
              onTap: BackTap,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset('assets/arrow-circle-left.png'),
                  )),
            ),
          ),
      ],
    );
  }
}

class CircleImage extends StatelessWidget {
  const CircleImage({
    Key? key,
    required this.Height,
    required this.Width,
    this.child,
  }) : super(key: key);

  final double Height;
  final double Width;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    var mediaHeight = MediaQuery.of(context).size.height;
    var mediaWidth = MediaQuery.of(context).size.width;
    return Container(
        width: mediaHeight * Width,
        height: mediaWidth * Height,
        decoration: ShapeDecoration(
          color: Colors.blue,
          shape: CircleBorder(
            side:
                BorderSide(width: 2, color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
        child: child);
  }
}
