import 'package:flutter/material.dart';


BoxDecoration pomodoroBackground({
  required isWorking,
  required backgroundShadow
}) {
  return BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors:backgroundShadow
          ? [
             isWorking
                ? Colors.red.withOpacity(0.3)
                : Colors.green.withOpacity(0.3),
            Colors.transparent,
            isWorking
                ? Colors.red.withOpacity(0.3)
                 : Colors.green.withOpacity(0.3)
          ]
          :[
            Colors.black,
            Colors.transparent,
            Colors.black,
          ]
    )
  );
}