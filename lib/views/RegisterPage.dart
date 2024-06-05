import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RegisterPage extends StatelessWidget {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController noKkController = TextEditingController();
  final TextEditingController noHpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/1/1a/Lambang_Kabupaten_Indramayu.png', // Replace with your logo asset
                    height: 50,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Desa Sleman',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add your signup logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: Text('Daftar'),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    _buildTextField('Nama', controller: namaController),
                    SizedBox(height: 10),
                    _buildTextField('Password', controller: passwordController, obscureText: true),
                    SizedBox(height: 10),
                    _buildTextField('Alamat', controller: alamatController),
                    SizedBox(height: 10),
                    _buildTextField('No.KK', controller: noKkController),
                    SizedBox(height: 10),
                    _buildTextField('No.Hp', controller: noHpController),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        _register(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue,
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Daftar'),
                          SizedBox(width: 10),
                          Icon(Icons.arrow_forward),
                        ],
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

  Widget _buildTextField(String labelText, {bool obscureText = false, TextEditingController? controller}) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: labelText,
      ),
    );
  }

  void _register(BuildContext context) async {
    final String nama = namaController.text;
    final String password = passwordController.text;
    final String alamat = alamatController.text;
    final String noKk = noKkController.text;
    final String noHp = noHpController.text;

    if (nama.isEmpty || password.isEmpty || alamat.isEmpty || noKk.isEmpty || noHp.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('All fields are required')),
      );
      return;
    }

    final response = await http.post(
      Uri.parse('http://192.168.56.1/desa_sleman/register.php'), // Replace with your backend URL
      headers: <String, String>{
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: {
        'nama': nama,
        'password': password,
        'alamat': alamat,
        'no_kk': noKk,
        'no_hp': noHp,
      },
    );

    final responseJson = json.decode(response.body);

    if (responseJson['status'] == 'success') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('User registered successfully')),
      );
      Navigator.pushNamed(context, '/land');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(responseJson['message'])),
      );
    }
  }
}
