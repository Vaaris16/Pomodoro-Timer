import 'package:flutter/material.dart';

Widget pomdoroButtonWidget({
  required bool isRunning,
  required bool isWorking,
  required VoidCallback onPressed
}) {
  return Stack(
    children: [
      Positioned(
        bottom: 100,
        left: 0,
        right: 0,
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(175, 90),
              padding: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 15
              ),
              backgroundColor: Colors.transparent,
              foregroundColor: isWorking ? Colors.red : Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
                side: BorderSide(
                  color: isWorking ? Colors.red : Colors.green,
                  width : 2,
                )
              )
            ),
            onPressed: onPressed,
            child: Text(
              isRunning ? 'Stop' : 'Start',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                fontFamily: 'Robotot'
              )
            )
          )
        )
      )
    ]
  );
}