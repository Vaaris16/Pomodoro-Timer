import 'package:flutter/material.dart';

AppBar buildSettingsState({
  required bool textShadow,
  required bool timerShadow,
  required bool backgroundShadow,
  required context
}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.white,
        size: 25,
        ),
        onPressed: () {
          Navigator.pop(context, true);
        },
      ),
      title: const Text(
        "Text Shadow",
        style: TextStyle(
          color: Colors.blue,
          fontFamily: "Roboto",
          fontSize: 25,
        ),
      ),
  );
}