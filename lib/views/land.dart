import 'package:flutter/material.dart';
import 'package:uhuy/views/LoginPage.dart';
import 'package:uhuy/views/RegisterPage.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    margin: EdgeInsets.only(top: 40), // Adjust this value as needed
                    width: 362.642,
                    height: 80.138,
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
                        style: const TextStyle(
                          color: const Color(0xff202244),
                          fontWeight: FontWeight.w600,
                          fontFamily: "Jost",
                          fontStyle: FontStyle.normal,
                          fontSize: 24.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                // Container for the image with shadow
                Align(
                  alignment: Alignment.center, // Adjust the alignment as needed
                  child: Container(
                    margin: EdgeInsets.only(top: 40), // Adjust this value as needed to space out from the text box
                    width: 294,
                    height: 166,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(22)),
                      image: DecorationImage(
                        image: AssetImage('kantor.jpg'), // Path to your image
                        fit: BoxFit.cover, // Adjust how the image should be fitted inside the container
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1), // Shadow color
                          spreadRadius: 3, // Shadow spread radius
                          blurRadius: 5, // Shadow blur radius
                          offset: Offset(0, 3), // Shadow position (x, y)
                        ),
                      ],
                    ),
                  ),
                ),
                // Adding the new content within a Column
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      // HEADING
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            "Layanan",
                            style: const TextStyle(
                              color: const Color(0xff202244),
                              fontWeight: FontWeight.w600,
                              fontFamily: "Jost",
                              fontStyle: FontStyle.normal,
                              fontSize: 18.0,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      // Services Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Service Cards with Shadows
                          ServiceCard(
                            label: "Profil",
                            imagePath: 'profil.png',
                            onTap: () {
                              Navigator.pushNamed(context, '/login');
                            },
                          ),
                          ServiceCard(
                            label: "Akun",
                            imagePath: 'akun.png',
                            onTap: () {
                              Navigator.pushNamed(context, '/login');
                            },
                          ),
                          ServiceCard(
                            label: "Notifikasi",
                            imagePath: 'notif.png',
                            onTap: () {
                              Navigator.pushNamed(context, '/register');
                            },
                          ),
                          ServiceCard(
                            label: "Struktur",
                            imagePath: 'bank.png',
                            onTap: () {
                              Navigator.pushNamed(context, '/register');
                            },
                          ),
                        ],
                      ),
                      // Rectangle
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        width: 320,
                        height: 130,
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
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: const Color(0xffffffff),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 30,
              height: 30,
              child: Image.asset(imagePath),
            ),
            SizedBox(height: 5),
            Text(
              label,
              style: const TextStyle(
                color: const Color(0xff000000),
                fontWeight: FontWeight.w800,
                fontFamily: "Mulish",
                fontStyle: FontStyle.normal,
                fontSize: 9.0,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

