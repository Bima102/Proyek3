import 'package:flutter/material.dart';

void main() {
  runApp(const RegistrationApp());
}

class RegistrationApp extends StatelessWidget {
  const RegistrationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegistrationPage(),
    );
  }
}

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Mengubah warna AppBar menjadi putih
        title: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.only(right: 16.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
              // You can replace the Image.asset with Image.network if you want to load an image from URL
              child: Image.network('https://upload.wikimedia.org/wikipedia/commons/1/1a/Lambang_Kabupaten_Indramayu.png', fit: BoxFit.cover),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                'Desa Sleman',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff3893F4), // Mengubah warna latar belakang body menjadi #3893F4
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Container untuk menambahkan background warna
            Container(
              color: Color(0xffA8FBEC),
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              child: Text(
                "Daftar Akun",
                style: const TextStyle(
                  color:  const Color(0xff202244),
                  fontWeight: FontWeight.w600,
                  fontFamily: "Jost",
                  fontStyle:  FontStyle.normal,
                  fontSize: 18.0
                ),
                textAlign: TextAlign.left                
              ),
            ),
            SizedBox(height: 16.0), // Adding some space
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0), // Padding untuk TextInput
              decoration: BoxDecoration(
                color: Colors.white, // Warna latar belakang TextInput
                borderRadius: BorderRadius.circular(10.0), // Bentuk TextInput
              ),
              child: TextFormField(
                style: TextStyle(color: Colors.black), // Mengubah warna teks menjadi hitam
                decoration: InputDecoration(
                  border: InputBorder.none, // Menghilangkan border
                  labelText: 'Nama',
                  labelStyle: TextStyle(color: Colors.black), // Mengubah warna label menjadi hitam
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0), // Padding untuk TextInput
              decoration: BoxDecoration(
                color: Colors.white, // Warna latar belakang TextInput
                borderRadius: BorderRadius.circular(10.0), // Bentuk TextInput
              ),
              child: TextFormField(
                style: TextStyle(color: Colors.black), // Mengubah warna teks menjadi hitam
                decoration: InputDecoration(
                  border: InputBorder.none, // Menghilangkan border
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.black), // Mengubah warna label menjadi hitam
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0), // Padding untuk TextInput
              decoration: BoxDecoration(
                color: Colors.white, // Warna latar belakang TextInput
                borderRadius: BorderRadius.circular(10.0), // Bentuk TextInput
              ),
              child: TextFormField(
                style: TextStyle(color: Colors.black), // Mengubah warna teks menjadi hitam
                decoration: InputDecoration(
                  border: InputBorder.none, // Menghilangkan border
                  labelText: 'Alamat',
                  labelStyle: TextStyle(color: Colors.black), // Mengubah warna label menjadi hitam
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0), // Padding untuk TextInput
              decoration: BoxDecoration(
                color: Colors.white, // Warna latar belakang TextInput
                borderRadius: BorderRadius.circular(10.0), // Bentuk TextInput
              ),
              child: TextFormField(
                style: TextStyle(color: Colors.black), // Mengubah warna teks menjadi hitam
                decoration: InputDecoration(
                  border: InputBorder.none, // Menghilangkan border
                  labelText: 'Nomor KK',
                  labelStyle: TextStyle(color: Colors.black), // Mengubah warna label menjadi hitam
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0), // Padding untuk TextInput
              decoration: BoxDecoration(
                color: Colors.white, // Warna latar belakang TextInput
                borderRadius: BorderRadius.circular(10.0), // Bentuk TextInput
              ),
              child: TextFormField(
                style: TextStyle(color: Colors.black), // Mengubah warna teks menjadi hitam
                decoration: InputDecoration(
                  border: InputBorder.none, // Menghilangkan border
                  labelText: 'Nomor HP',
                  labelStyle: TextStyle(color: Colors.black), // Mengubah warna label menjadi hitam
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implementasi logika untuk tombol daftar di sini
              },
              child: Text('Daftar'),
            ),
          ],
        ),
      ),
    );
  }
}