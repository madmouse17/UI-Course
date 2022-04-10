import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:flutter_countdown_timer/current_remaining_time.dart';
import 'package:get/get.dart';
import 'package:ui_course/_partials/mediaQuery.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:ui_course/routers/routeName/routeName.dart';

class VerifyOTP extends StatefulWidget {
  VerifyOTP({Key? key}) : super(key: key);

  @override
  State<VerifyOTP> createState() => _VerifyOTPState();
}

class _VerifyOTPState extends State<VerifyOTP> {
  late CountdownTimerController controller;
  int endTime = DateTime.now().millisecondsSinceEpoch +
      Duration(minutes: 2).inMilliseconds;
  @override
  void initState() {
    super.initState();
    controller = CountdownTimerController(endTime: endTime, onEnd: onEnd);
  }

  void onEnd() {
    print('onEnd');
  }

  String _getNumberAddZero(int number) {
    if (number < 10) {
      return "0" + number.toString();
    }
    return number.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Verifikasi Kode OTP',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black,
            )),
      ),
      body: SafeArea(
        child: Container(
          height: mediaHeight / 2,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                  child: AutoSizeText(
                    "Kode OTP telah dikirim ke nomor",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ),
                Center(
                  child: AutoSizeText(
                    "+628xxxxxxxxx",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  // color: Colors.red,
                  margin: EdgeInsets.only(top: 20, left: 50, right: 50),
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InputOtp(
                        autofocus: true,
                      ),
                      InputOtp(
                        autofocus: false,
                      ),
                      InputOtp(
                        autofocus: false,
                      ),
                      InputOtp(
                        autofocus: false,
                      ),
                    ],
                  ),
                ),
                CountdownTimer(
                  controller: controller,
                  widgetBuilder: (_, CurrentRemainingTime? time) {
                    if (time == null) {
                      return Center(
                        child: AutoSizeText.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "Belum mendapatkan Kode OTP?  ",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.grey),
                              ),
                              TextSpan(
                                text: "Kirim Lagi",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.blue),
                              )
                            ],
                          ),
                        ),
                      );
                    }
                    return Center(
                      child: AutoSizeText.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Kode OTP berlaku dalam :  ",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: Colors.grey),
                            ),
                            TextSpan(
                              text:
                                  "${_getNumberAddZero(time.min ?? 0)}:${_getNumberAddZero(time.sec ?? 0)}",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () => Get.toNamed(routeName.bottomBar),
                    child: Text(
                      "Konfirmasi",
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(mediaWidth / 1.1, mediaHeight * 0.06),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InputOtp extends StatelessWidget {
  const InputOtp({Key? key, required this.autofocus}) : super(key: key);
  final bool autofocus;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: mediaHeight * 0.1,
      width: mediaWidth * 0.14,
      decoration: BoxDecoration(
        // color: Colors.red,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          counterText: "",
        ),
        onChanged: (value) {
          if (value.length == 1) FocusScope.of(context).nextFocus();
        },
        textAlign: TextAlign.center,
        maxLength: 1,
        autofocus: autofocus,
        keyboardType: TextInputType.number,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
