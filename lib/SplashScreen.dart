import 'dart:async';
import 'package:flutter/material.dart';
import 'package:praktikumpabflutter/FormTex.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _loadSplashScreen();
  }

  _loadSplashScreen() async {
    // Simulate a delay for 3 seconds
    await Future.delayed(Duration(seconds: 3));

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return FormText();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black, // Background color
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.network(
                    // Resized Image link 1
                    'https://th.bing.com/th/id/OIP.TTCgnTjm3-P-qjGSCmgBCAHaEH?w=241&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
                    width: 220, // ukuran
                    height: 220, // ukuran
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
  ));
}
