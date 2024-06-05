import 'package:flutter/material.dart';

class NotifPage extends StatelessWidget {
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
            child: Padding(
              padding: const EdgeInsets.all(16.0), // Add some padding around the content
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
                  SizedBox(height: screenHeight * 0.05),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding
                    decoration: BoxDecoration(
                      color: const Color(0xffa8fbec),
                      borderRadius: BorderRadius.circular(20.0), // Rounded corners with radius 20
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back, color: Color(0xff202244)),
                          onPressed: () {
                            Navigator.pushNamed(context, '/land'); // Navigate back to landing page
                          },
                        ),
                        Text(
                          "Notifikasi",
                          style: const TextStyle(
                            color: Color(0xff202244),
                            fontWeight: FontWeight.w600,
                            fontFamily: "Jost",
                            fontStyle: FontStyle.normal,
                            fontSize: 18.0,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(width: 48), // This is to add space after the text, so it remains in center
                      ],
                    ),
                  ),
                  SizedBox(height: 16), // Add some space between the containers
                  Container(
                    width: screenWidth * 0.9, // Make width responsive
                    height: 66,
                    decoration: BoxDecoration(
                      color: const Color(0xff1bded2),
                      borderRadius: BorderRadius.circular(20.0), // Rounded corners with radius 20
                    ),
                    child: Center( // Center the text horizontally and vertically
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding
                        child: Text(
                          "Tidak ada notifikasi saat ini",
                          style: const TextStyle(
                            color: Color(0xff202244),
                            fontWeight: FontWeight.w600,
                            fontFamily: "Jost",
                            fontStyle: FontStyle.normal,
                            fontSize: 16.0, // Reduce font size
                          ),
                          textAlign: TextAlign.center, // Center the text
                        ),
                      ),
                    ),
                  ),
                  // Add other widgets or notifications here as needed
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

