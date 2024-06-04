import 'package:flutter/material.dart';

class MenuSurat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xff1a6efc),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0), // Add some padding around the content
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 70), // Add a SizedBox with height 70 to push content downward
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
                        onPressed: () { Navigator.pushNamed(context, '/land');// Add your login logic here
                        },
                      ),
                      Text(
                        "Surat",
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
                  width: MediaQuery.of(context).size.width, // Make width responsive
                  height: 66,
                  decoration: BoxDecoration(
                    color: const Color(0xff1bded2),
                    borderRadius: BorderRadius.circular(20.0), // Rounded corners with radius 20
                  ),
                  child: Center( // Center the text horizontally and vertically
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding
                      child: Text(
                        "Surat Kuasa Dalam Pelayanan Administrasi Kependudukan",
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
                // Add other widgets here as needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}

