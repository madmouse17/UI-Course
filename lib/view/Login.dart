import 'package:animations/animations.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_course/routers/routeName/routeName.dart';
import 'package:ui_course/_partials/constant.dart';
import 'package:ui_course/view/register.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    var mediaHeight = MediaQuery.of(context).size.height;
    var mediaWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: mediaWidth,
          height: mediaHeight,
          decoration: BoxDecoration(
              color: primaryColor,
              image: DecorationImage(
                  image: AssetImage("assets/Starting_Page.png"),
                  fit: BoxFit.cover)),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: mediaWidth,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: mediaHeight * 0.05,
                  ),
                  AutoSizeText(
                    "Masuk",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: mediaHeight * 0.035,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: mediaHeight * 0.01,
                  ),
                  AutoSizeText(
                    "Silahkan masuk untuk memulai belajar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: mediaHeight * 0.02,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: mediaHeight * 0.03,
                  ),
                  AutoSizeText(
                    "Email",
                    style: TextStyle(fontSize: mediaHeight * 0.02),
                  ),
                  SizedBox(
                    height: mediaHeight * 0.01,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Masukkan Email",
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: mediaHeight * 0.02,
                  ),
                  AutoSizeText(
                    "Password",
                    style: TextStyle(fontSize: mediaHeight * 0.02),
                  ),
                  SizedBox(
                    height: mediaHeight * 0.01,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Masukkan Password",
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _visible = !_visible;
                          });
                        },
                        icon: (_visible)
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                      ),
                    ),
                    obscureText: _visible,
                  ),
                  SizedBox(
                    height: mediaHeight * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () => print("lupa password"),
                        child: AutoSizeText(
                          "Lupa Password?",
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: mediaHeight * 0.03,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () => Get.toNamed(routeName.otp),
                      child: Text("Masuk"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(mediaWidth / 1.1, mediaHeight * 0.06),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mediaHeight * 0.03,
                  ),
                  Center(
                    child: AutoSizeText(
                      "Atau masuk menggunakan",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: mediaHeight * 0.02,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mediaHeight * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: InkWell(
                            onTap: () => print('gmail'),
                            child: Image.asset("assets/Gmail.png")),
                      ),
                      InkWell(
                          onTap: () => print('facebook'),
                          child: Image.asset("assets/facebook_1.png")),
                    ],
                  ),
                  SizedBox(
                    height: mediaHeight * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(routeName.register);
                    },
                    child: Center(
                      child: AutoSizeText.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Belum punya akun? ",
                              style: TextStyle(
                                fontSize: mediaHeight * 0.02,
                              ),
                            ),
                            TextSpan(
                              text: "Daftar Sekarang",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: mediaHeight * 0.02,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mediaHeight * 0.09,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
