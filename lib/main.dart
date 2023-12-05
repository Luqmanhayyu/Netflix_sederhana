import 'package:flutter/material.dart';
import 'package:praktikumpabflutter/FormTex.dart';
import 'package:praktikumpabflutter/SplashScreen.dart';
//NBI: 1462100071
//NAMA: Luqman Hayyu Winata

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //tampilkan SplashScreen
      home: SplashScreen(),
    );
  }
}
