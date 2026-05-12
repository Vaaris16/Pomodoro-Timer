import 'package:flutter/material.dart';
import '/PomodoroFiles/format_timer.dart';
import '../SettingsFiles/settings_page.dart';

Widget pomodoroTimerWidget({
  required int totalTime,
  required bool isWorking,
}) {
  return Stack(
    children: [
      Positioned(
        bottom: 200,
        left: 0,
        right: 0,
        child: Center(
          child:Stack(
            children: [
              Text(
                formatTime(totalTime),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 225,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Oxanium',
                  shadows: SettingsAppState.timerShadow
                  ? [
                    Shadow(
                      color: isWorking
                      ? Colors.red
                      : Colors.green,
                      blurRadius: 50,
                      offset: Offset(2, 2),
                    )
                  ]
                  :null,

                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 10
                    ..color = isWorking ? Colors.red : Colors.green,
                )
              ),
              Text(
                formatTime(totalTime),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 225,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                )
              )
            ]
          )
        )
      )
    ]
  );
}