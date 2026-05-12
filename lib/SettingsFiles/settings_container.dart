import 'package:flutter/material.dart';

Widget settingsBackground() {
  return Stack(
    children: [
      Container(color: Colors.black),
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue.withOpacity(0.3),
              Colors.transparent,
              Colors.blue.withOpacity(0.3),
            ],
          ),
        ),
      ),
    ],
  );
}