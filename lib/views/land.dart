import 'package:flutter/material.dart';
import 'package:uhuy/views/LoginPage.dart';
import 'package:uhuy/views/RegisterPage.dart';
import 'package:uhuy/views/menusurat.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white, // White color at the top
                  Color(0xff1a6efc), // Blue color at the bottom
                ],
                stops: [0.5, 1.0], // Color change at the middle
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                // Rectangle centered at the top with shadow
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: screenHeight * 0.05),
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                      border: Border.all(
                        color: const Color(0x33b4bdc4),
                        width: 2,
                      ),
                      color: const Color(0xffe8f1ff),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1), // Shadow color
                          spreadRadius: 3, // Shadow spread radius
                          blurRadius: 5, // Shadow blur radius
                          offset: Offset(0, 3), // Shadow position (x, y)
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Desa Sleman",
                        style: TextStyle(
                          color: const Color(0xff202244),
                          fontWeight: FontWeight.w600,
                          fontFamily: "Jost",
                          fontStyle: FontStyle.normal,
                          fontSize: screenHeight * 0.03,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Container for the image with shadow
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(top: screenHeight * 0.05),
                    width: screenWidth * 0.8,
                    height: screenHeight * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                      image: DecorationImage(
                        image: AssetImage('kantor.jpeg'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.05),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.05),
                          child: Text(
                            "",
                            style: TextStyle(
                              color: const Color(0xff202244),
                              fontWeight: FontWeight.w600,
                              fontFamily: "Jost",
                              fontStyle: FontStyle.normal,
                              fontSize: screenHeight * 0.025,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ServiceCard(
                            label: "Buat Surat",
                            imagePath: 'profil.png',
                            onTap: () {
                              Navigator.pushNamed(context, '/menusurat');
                            },
                          ),
                          ServiceCard(
                            label: "Notifikasi",
                            imagePath: 'notif.png',
                            onTap: () {
                              Navigator.pushNamed(context, '/notif');
                            },
                          ),
                          ServiceCard(
                            label: "Akun",
                            imagePath: 'akun.png',
                            onTap: () {
                              Navigator.pushNamed(context, '/register');
                            },
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: screenHeight * 0.05),
                        width: screenWidth * 0.9,
                        height: screenHeight * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x14000000),
                              offset: Offset(0, 4),
                              blurRadius: 10,
                              spreadRadius: 0,
                            ),
                          ],
                          color: const Color(0xffffffff),
                        ),
                        child: Center(
                          child: Text(
                            "Sleman (bahasa Jawa: ꦱ꧀ꦭꦺꦩꦤ꧀) adalah desa di kecamatan Sliyeg, Indramayu, Jawa Barat, Indonesia.sleman adalah desa perbatasan antara wilayah Sleman Lor dengan batas nya adalah sebelah selatan Jl. Raya Jatibarang Karangampel dan sebelah timur berbatasan dengan desa Tambi, Sleman juga merupakan desa maju di wilayah sliyeg, pusat pemerintahan berada di jl Raya Jatibarang Karangampel, sleman adalah desa seni ini dengan di buktikannya banyak kesenian yang dimiliki ,desa itu seperti,organ tarling, singa gotong, dan wayang kulit",
                            style: TextStyle(
                              color: const Color(0xff202244),
                              fontWeight: FontWeight.w600,
                              fontFamily: "Jost",
                              fontStyle: FontStyle.normal,
                              fontSize: screenHeight * 0.015,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String label;
  final String imagePath;
  final VoidCallback? onTap;

  ServiceCard({required this.label, required this.imagePath, this.onTap});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: screenWidth * 0.2,
        height: screenHeight * 0.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: const Color(0xffffffff),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: screenWidth * 0.1,
              height: screenHeight * 0.07,
              child: Image.asset(imagePath),
            ),
            SizedBox(height: screenHeight * 0.01),
            Text(
              label,
              style: TextStyle(
                color: const Color(0xff000000),
                fontWeight: FontWeight.w800,
                fontFamily: "Mulish",
                fontStyle: FontStyle.normal,
                fontSize: screenHeight * 0.015,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

