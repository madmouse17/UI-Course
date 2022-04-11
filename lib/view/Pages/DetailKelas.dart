import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ui_course/_partials/constant.dart';
import 'package:expandable/expandable.dart';

class DetailKelas extends StatefulWidget {
  DetailKelas({Key? key}) : super(key: key);

  @override
  State<DetailKelas> createState() => _DetailKelasState();
}

class _DetailKelasState extends State<DetailKelas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.black,
        ),
        title: Text(
          "UI/UX Fundamental",
          style: Get.textTheme.headline5!
              .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        elevation: 0,
        actions: [Image.asset("assets/Detail_Kelas/Setting.png")],
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "1058",
                      style: Get.textTheme.headline6!
                          .copyWith(color: primaryColor),
                    ),
                    Text(
                      "Member",
                      style: Get.textTheme.caption,
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/Detail_Kelas/Tingkatan.png"),
                    Text(
                      "Tingkatan",
                      style: Get.textTheme.caption,
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '4.9',
                      style: Get.textTheme.headline6!
                          .copyWith(color: primaryColor),
                    ),
                    Text(
                      "Rating",
                      style: Get.textTheme.caption,
                    )
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: Get.height / 50),
              height: Get.height / 3.5,
              width: Get.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Detail_Kelas/Video.png"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset("assets/Detail_Kelas/video-circle.png"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rp. 950.000",
                  style: Get.textTheme.headline5!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Image.asset("assets/Detail_Kelas/Love.png")
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Get.height * 0.03),
              child: Text(
                "Tentang Kelas",
                style: Get.textTheme.titleLarge,
              ),
            ),
            Text(
              "Pada kelas ini kamu akan mempelajari semua fundamental dari UI/UX Design dan mengerjakan untuk menjadikan kamu sebagai UI/UX Designer yang siap kerja.",
              textAlign: TextAlign.justify,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Get.height * 0.03),
              child: Text(
                "Materi Kelas",
                style: Get.textTheme.titleLarge,
              ),
            ),
            ExpandTitle(
              text: "Introduction UI / UX",
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1. Dasar- dasar penggunaan",
                        style: Get.textTheme.subtitle1!
                            .copyWith(color: Color.fromARGB(255, 90, 90, 90)),
                      ),
                      Text(
                        "2. Membuat Projek Pertama Kali",
                        style: Get.textTheme.subtitle1!
                            .copyWith(color: Color.fromARGB(255, 90, 90, 90)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            ExpandTitle(
              text: "Pengenalan Figma",
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1. Dasar- dasar penggunaan",
                        style: Get.textTheme.subtitle1!
                            .copyWith(color: Color.fromARGB(255, 90, 90, 90)),
                      ),
                      Text(
                        "2. Membuat Projek Pertama Kali",
                        style: Get.textTheme.subtitle1!
                            .copyWith(color: Color.fromARGB(255, 90, 90, 90)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            ExpandTitle(
              text: "UX Design Proses",
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1. Dasar- dasar penggunaan",
                        style: Get.textTheme.subtitle1!
                            .copyWith(color: Color.fromARGB(255, 90, 90, 90)),
                      ),
                      Text(
                        "2. Membuat Projek Pertama Kali",
                        style: Get.textTheme.subtitle1!
                            .copyWith(color: Color.fromARGB(255, 90, 90, 90)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            ExpandTitle(
              text: "User Flow",
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1. Dasar- dasar penggunaan",
                        style: Get.textTheme.subtitle1!
                            .copyWith(color: Color.fromARGB(255, 90, 90, 90)),
                      ),
                      Text(
                        "2. Membuat Projek Pertama Kali",
                        style: Get.textTheme.subtitle1!
                            .copyWith(color: Color.fromARGB(255, 90, 90, 90)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            ExpandTitle(
              text: "Wireframe",
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1. Dasar- dasar penggunaan",
                        style: Get.textTheme.subtitle1!
                            .copyWith(color: Color.fromARGB(255, 90, 90, 90)),
                      ),
                      Text(
                        "2. Membuat Projek Pertama Kali",
                        style: Get.textTheme.subtitle1!
                            .copyWith(color: Color.fromARGB(255, 90, 90, 90)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Center(
              child: Text(
                "Lihat Semua",
                style: Get.textTheme.headline6!.copyWith(color: primaryColor),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Get.height * 0.02),
              child: Text(
                "Software Pendukung",
                style: Get.textTheme.headline6,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ImageSlider(
                  image: "assets/Detail_Kelas/Figma.png",
                  text: "Figma",
                ),
                ImageSlider(
                  image: "assets/Detail_Kelas/Invision.png",
                  text: "Invision",
                ),
                ImageSlider(
                  image: "assets/Detail_Kelas/Notion.png",
                  text: "Notion",
                ),
                ImageSlider(
                  image: "assets/Detail_Kelas/Jira.png",
                  text: "Jira",
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Get.height * 0.02),
              child: Text(
                "Yang Sering DiTanyakan",
                style: Get.textTheme.headline6,
              ),
            ),
            ExpandTitle(
              text: "Apakah kelas ini cocok untuk pemula?",
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1. Dasar- dasar penggunaan",
                        style: Get.textTheme.subtitle1!
                            .copyWith(color: Color.fromARGB(255, 90, 90, 90)),
                      ),
                      Text(
                        "2. Membuat Projek Pertama Kali",
                        style: Get.textTheme.subtitle1!
                            .copyWith(color: Color.fromARGB(255, 90, 90, 90)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            ExpandTitle(
              text: "Bagaimana sistem belajarnya?",
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1. Dasar- dasar penggunaan",
                        style: Get.textTheme.subtitle1!
                            .copyWith(color: Color.fromARGB(255, 90, 90, 90)),
                      ),
                      Text(
                        "2. Membuat Projek Pertama Kali",
                        style: Get.textTheme.subtitle1!
                            .copyWith(color: Color.fromARGB(255, 90, 90, 90)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            ExpandTitle(
              text: "Cara berkonsultasi dengan mentor?",
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1. Dasar- dasar penggunaan",
                        style: Get.textTheme.subtitle1!
                            .copyWith(color: Color.fromARGB(255, 90, 90, 90)),
                      ),
                      Text(
                        "2. Membuat Projek Pertama Kali",
                        style: Get.textTheme.subtitle1!
                            .copyWith(color: Color.fromARGB(255, 90, 90, 90)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            ExpandTitle(
              text: "Cara mendapatkan sertifikat kelas?",
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1. Dasar- dasar penggunaan",
                        style: Get.textTheme.subtitle1!
                            .copyWith(color: Color.fromARGB(255, 90, 90, 90)),
                      ),
                      Text(
                        "2. Membuat Projek Pertama Kali",
                        style: Get.textTheme.subtitle1!
                            .copyWith(color: Color.fromARGB(255, 90, 90, 90)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            ExpandTitle(
              text: "Cara mendapatkan Job Connect?",
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1. Dasar- dasar penggunaan",
                        style: Get.textTheme.subtitle1!
                            .copyWith(color: Color.fromARGB(255, 90, 90, 90)),
                      ),
                      Text(
                        "2. Membuat Projek Pertama Kali",
                        style: Get.textTheme.subtitle1!
                            .copyWith(color: Color.fromARGB(255, 90, 90, 90)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Get.height * 0.02),
              child: Text(
                "Yang Dikatakan Siswa Kami",
                style: Get.textTheme.headline6,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardTestimoni(
                      image: "assets/Detail_Kelas/Foto_Testimoni_1.png",
                      name: "Irfan Kurniawan",
                      job: "UI/UX Designer",
                      testimoni:
                          "Cupidatat fugiat eiusmod eu ullamco id minim. Id dolor velit tempor reprehenderit nulla pariatur nisi. Officia tempor est amet adipisicing labore officia occaecat cillum duis ad et Lorem adipisicing. Sit ad aliquip consectetur laboris. Velit labore laboris esse Lorem esse enim esse ex do sunt pariatur esse laboris."),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  CardTestimoni(
                      image: "assets/Detail_Kelas/Foto_Testimoni_2.png",
                      name: "Raisa Septia",
                      job: "Mahasiswa",
                      testimoni:
                          "Cupidatat fugiat eiusmod eu ullamco id minim. Id dolor velit tempor reprehenderit nulla pariatur nisi. Officia tempor est amet adipisicing labore officia occaecat cillum duis ad et Lorem adipisicing. Sit ad aliquip consectetur laboris. Velit labore laboris esse Lorem esse enim esse ex do sunt pariatur esse laboris."),
                  CardTestimoni(
                      image: "assets/Detail_Kelas/Foto_Testimoni_3.png",
                      name: "Galih Risti Fauzy",
                      job: "Flutter Dev",
                      testimoni:
                          "Cupidatat fugiat eiusmod eu ullamco id minim. Id dolor velit tempor reprehenderit nulla pariatur nisi. Officia tempor est amet adipisicing labore officia occaecat cillum duis ad et Lorem adipisicing. Sit ad aliquip consectetur laboris. Velit labore laboris esse Lorem esse enim esse ex do sunt pariatur esse laboris."),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Beli Sekarang",
                style: Get.textTheme.headline6!.copyWith(color: primaryColor),
              ),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(Get.width / 3, Get.height * 0.05),
                  primary: Colors.white,
                  side: BorderSide(color: primaryColor)),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.add),
                  Text(
                    "Keranjang",
                    style:
                        Get.textTheme.headline6!.copyWith(color: Colors.white),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(Get.width / 3, Get.height * 0.05),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardTestimoni extends StatelessWidget {
  const CardTestimoni(
      {Key? key,
      required this.image,
      required this.name,
      required this.job,
      required this.testimoni})
      : super(key: key);
  final String image;
  final String name;
  final String job;
  final String testimoni;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      width: Get.width / 2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 238, 241, 255)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(image),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: Get.textTheme.titleMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      job,
                      style: Get.textTheme.labelMedium!
                          .copyWith(color: Colors.grey),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text(testimoni)
        ],
      ),
    );
  }
}

class ImageSlider extends StatelessWidget {
  const ImageSlider({Key? key, required this.image, required this.text})
      : super(key: key);
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: Get.height * 0.08,
        ),
        Text(
          text,
          style: Get.textTheme.subtitle1!.copyWith(
            color: Color.fromARGB(255, 90, 90, 90),
          ),
        )
      ],
    );
  }
}

class ExpandTitle extends StatelessWidget {
  const ExpandTitle({Key? key, required this.text, required this.children})
      : super(key: key);
  final String text;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ExpansionTile(
        title: Text(
          text,
          style: Get.textTheme.titleLarge!.copyWith(color: primaryColor),
        ),
        backgroundColor: primarylightColor,
        collapsedBackgroundColor: primarylightColor,
        collapsedIconColor: primaryColor,
        expandedAlignment: Alignment.topLeft,
        children: children,
      ),
    );
  }
}
