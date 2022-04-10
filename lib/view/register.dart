import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_course/routers/routeName/routeName.dart';
import 'package:ui_course/_partials/constant.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterPage(),
    );
  }
}

class RegisterPage extends StatefulWidget {
  RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _visible = true;
  bool _visible2 = true;

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
                    "Daftar Sekarang",
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
                    "Untuk meningkatkan skill digital kamu",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: mediaHeight * 0.02,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: mediaHeight * 0.03,
                  ),
                  TextField(head: "Username", hint: "Masukkan Username"),
                  TextField(head: "Email", hint: "Masukkan Email"),
                  TextField(head: "No Handphone", hint: "+62"),
                  AutoSizeText(
                    "Password",
                    style: TextStyle(fontSize: mediaHeight * 0.02),
                  ),
                  SizedBox(
                    height: mediaHeight * 0.01,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Minimal 8 karakter",
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
                    height: mediaHeight * 0.02,
                  ),
                  AutoSizeText(
                    "Ulangi Password",
                    style: TextStyle(fontSize: mediaHeight * 0.02),
                  ),
                  SizedBox(
                    height: mediaHeight * 0.01,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Minimal 8 karakter",
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _visible2 = !_visible2;
                          });
                        },
                        icon: (_visible2)
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                      ),
                    ),
                    obscureText: _visible2,
                  ),
                  SizedBox(
                    height: mediaHeight * 0.03,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Daftar"),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(mediaWidth / 1.1, mediaHeight * 0.06),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mediaHeight * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(routeName.login);
                    },
                    child: Center(
                      child: AutoSizeText.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Sudah punya akun? ",
                              style: TextStyle(
                                fontSize: mediaHeight * 0.02,
                              ),
                            ),
                            TextSpan(
                              text: "Masuk",
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
                    height: mediaHeight * 0.03,
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

class TextField extends StatelessWidget {
  const TextField({
    Key? key,
    required this.head,
    required this.hint,
  }) : super(key: key);

  final String head;
  final String hint;

  @override
  Widget build(BuildContext context) {
    var mediaHeight = MediaQuery.of(context).size.height;
    var mediaWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          head,
          style: TextStyle(fontSize: mediaHeight * 0.02),
        ),
        SizedBox(
          height: mediaHeight * 0.01,
        ),
        TextFormField(
          decoration:
              InputDecoration(hintText: hint, border: OutlineInputBorder()),
        ),
        SizedBox(
          height: mediaHeight * 0.02,
        ),
      ],
    );
  }
}
