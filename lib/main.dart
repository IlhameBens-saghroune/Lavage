// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lavagecom_app/screens/clients/login.dart';
import 'package:lavagecom_app/screens/lavagiste/login.dart';
import 'package:lavagecom_app/screens/lavagiste/register.dart';
import 'package:lavagecom_app/screens/map_screen.dart';
import 'package:lavagecom_app/screens/clients/register.dart';
import 'package:lavagecom_app/screens/welcome.dart';

import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Welcome(),
      initialRoute: 'welcome',
      routes: {
        'home': (context) => Home(),
        'login_client': (context) => Login_Client(),
        'register_client': (context) => Register_Client(),
        'login_lavageur': (context) => Login_Lavageur(),
        'register_lavageur': (context) => Register_Lavageur(),
        'welcome': (context) => Welcome(),
        'map_screen': (context) => Map_Screen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
