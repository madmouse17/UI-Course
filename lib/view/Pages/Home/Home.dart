import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ui_course/_partials/mediaQuery.dart';
import 'package:ui_course/_partials/constant.dart';
import 'package:ui_course/routers/routeName/routeName.dart';
import 'package:ui_course/view/Pages/Home/HomeController.dart';
import 'package:ui_course/view/Pages/Home/HomeModels.dart';
import 'package:ui_course/widgets/KategoriSliders.dart';
import 'package:ui_course/widgets/headTextList.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final homeController c = Get.put(homeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.transparent,
        ),
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          AutoSizeText(
            'Hallo, Joshua',
            style: Theme.of(context).textTheme.headline6,
          ),
          AutoSizeText(
            'Tingkatkan Keahlianmu Sekarang',
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: Colors.grey),
          )
        ]),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          GestureDetector(
            child: Image.asset('assets/Home/Keranjang.png'),
            onTap: () {},
          ),
          GestureDetector(
            child: Image.asset('assets/Home/Notifikasi.png'),
            onTap: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: mediaWidth / 1.5,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Cari Kelas Disini",
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize:
                              Size(mediaWidth * 0.1, mediaHeight * 0.07)),
                      onPressed: () {},
                      child: Image.asset(
                        "assets/Home/search-normal.png",
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 20),
                  child: Column(
                    children: [
                      CarouselSlider(
                        items: c.cardList,
                        carouselController: c.controller,
                        options: CarouselOptions(
                            autoPlay: true,
                            enlargeCenterPage: true,
                            aspectRatio: 2.8 / 1.1,
                            onPageChanged: (index, reason) {
                              c.current.value = index;
                            }),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: c.cardList.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => c.controller.animateToPage(entry.key),
                            child: Obx(() => Container(
                                  width: mediaWidth * 0.02,
                                  height: mediaHeight * 0.02,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 4.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: (Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? Color.fromARGB(
                                                  255, 195, 228, 255)
                                              : Color.fromARGB(
                                                  255, 0, 123, 224))
                                          .withOpacity(
                                              c.current.value == entry.key
                                                  ? 0.9
                                                  : 0.4)),
                                )),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                HeadTextList(
                  text: "Kategori",
                  onTap: () {},
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      KategoriSlider(
                          text: "Programing",
                          image: "assets/Home/Programming.png",
                          onTap: () {}),
                      KategoriSlider(
                          text: "Design",
                          image: "assets/Home/Design.png",
                          onTap: () {}),
                      KategoriSlider(
                          text: "Marketing",
                          image: "assets/Home/Marketing.png",
                          onTap: () {}),
                      KategoriSlider(
                          text: "Data Science",
                          image: "assets/Home/Data_Sciene.png",
                          onTap: () {})
                    ],
                  ),
                ),
                HeadTextList(
                  text: "Kelas Terpopuler",
                  onTap: () {},
                ),
                FutureBuilder<List<HomeModels>?>(
                    future: c.readJson(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Container(
                          child: CircularProgressIndicator(),
                        );
                      } else if (snapshot.hasError) {
                        return Text("error");
                      } else {
                        List<HomeModels>? data = snapshot.data;
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: data!.map((data) {
                            return Obx(() => CardPopuler(
                                  image: data.image,
                                  title: data.title,
                                  rating: data.rating,
                                  price: data.price,
                                  wishImage: (c.wish.isTrue)
                                      ? 'assets/Home/Love_active.png'
                                      : 'assets/Home/Love.png',
                                  onTap: () {
                                    Get.toNamed(routeName.detailKelas,
                                        arguments: data.id);
                                    print('tap');
                                  },
                                  onWishlist: () {
                                    c.wish.value = !c.wish.value;

                                    print('wish ${c.wish.value}');
                                  },
                                ));
                          }).toList()),
                        );
                      }
                    }),
                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Row(
                //     children: [
                //       CardPopuler(
                //         image: 'assets/Home/Gambar_1.png',
                //         title: "UI/UX Design Fundamental",
                //         rating: "4.9",
                //         price: "Rp. 950.000",
                //         onTap: () {
                //           Get.toNamed(routeName.detailKelas);
                //           print('tap');
                //         },
                //         onWishlist: () {
                //           print('wish');
                //         },
                //       ),
                //       CardPopuler(
                //         image: 'assets/Home/Gambar_2.png',
                //         title: "Full-Stack Developer",
                //         rating: "4.9",
                //         price: "Rp. 2.250.000",
                //         onTap: () {},
                //         onWishlist: () {},
                //       ),
                //       CardPopuler(
                //         image: 'assets/Home/Gambar_3.png',
                //         title: "Digital Merketing",
                //         rating: "4.9",
                //         price: "Rp. 950.000",
                //         onTap: () {},
                //         onWishlist: () {},
                //       ),
                //       CardPopuler(
                //         image: 'assets/Home/Gambar_4.png',
                //         title: "Front-End Developer",
                //         rating: "4.9",
                //         price: "Rp. 950.000",
                //         onTap: () {},
                //         onWishlist: () {},
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardPopuler extends StatelessWidget {
  CardPopuler({
    required this.image,
    required this.price,
    required this.rating,
    required this.title,
    required this.onTap,
    required this.onWishlist,
    required this.wishImage,
    Key? key,
  }) : super(key: key);
  final String image;
  final String title;
  final String rating;
  final String price;
  final String wishImage;
  final Function() onTap;
  final Function() onWishlist;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: mediaWidth / 3,
      margin: EdgeInsets.only(top: 15),
      child: InkWell(
        onTap: () => onTap(),
        child: Card(
          elevation: 3,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(image),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: AutoSizeText(
                  title,
                  maxLines: 1,
                  style: themeText.titleSmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/Home/Bintang.png'),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(rating),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 5, left: 10, bottom: 10, right: 10),
                width: mediaWidth / 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText(
                      price,
                      style: themeText.titleSmall!.copyWith(
                          fontWeight: FontWeight.bold, color: primaryColor),
                    ),
                    GestureDetector(
                      onTap: () {
                        onWishlist();
                      },
                      child: Image.asset(
                        wishImage,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
