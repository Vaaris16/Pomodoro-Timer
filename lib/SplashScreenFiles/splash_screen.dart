import 'package:flutter/material.dart';
import 'dart:ui';
import '../PomodoroFiles/pomodoro_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}
class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const PomodoroTimer()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.black),
          Container(color: Colors.black),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.red.withOpacity(0.45),
                  Colors.transparent,
                  Colors.green.withOpacity(0.45)
                ],
                stops: [0.0, 0.5, 1.0],
              )
            )
          ),
          
          Center(
            child: Stack(
              children: [
                Positioned(
                  top: 5,
                  left: 5,
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                    child: Image.asset(
                      'assets/iconnewest.png',
                      height: 250,
                      width: 250,
                      color: Colors.red.withOpacity(0.6),
                    ),
                  ),
                ),
                // Main image
                Image.asset(
                  'assets/iconnewest.png',
                  color: Colors.white,
                  height: 250,
                  width: 250,
                ),
              ],
            ),
          )
        ]
      )
    );
  }
}
