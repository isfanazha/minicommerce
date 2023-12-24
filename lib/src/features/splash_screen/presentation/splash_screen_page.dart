import 'dart:async';

import 'package:flutter/material.dart';
import 'package:minicommerce/src/features/home/presentation/home_page.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF323232), // Background color set to black
      body: Center(
        child: Image.asset('assets/images/logo.png'), // Add your logo here
      ),
    );
  }
}
