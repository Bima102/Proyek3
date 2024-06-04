import 'package:flutter/material.dart';
import 'package:uhuy/views/LoginPage.dart';
import 'package:uhuy/views/RegisterPage.dart';
import 'package:uhuy/views/land.dart';
import 'package:uhuy/views/menusurat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        '/register': (context) => RegisterPage(),
        '/login':(context) => LoginPage(),
        '/land':(context) => LandingPage(),
        '/menusurat':(context) => MenuSurat(),

      },
    );
  }
}