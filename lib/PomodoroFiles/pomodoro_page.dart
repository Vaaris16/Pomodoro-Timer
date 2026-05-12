import 'package:flutter/material.dart';
import 'dart:async';
import '../SettingsFiles/settings_page.dart';
import '/PomodoroFiles/pomodoro_appBar.dart';
import '/PomodoroFiles/pomodoro_timer.dart';
import '/PomodoroFiles/pomodoro_button.dart';
import '/PomodoroFiles/pomodoro_background.dart';

class PomodoroTimer extends StatefulWidget {
  const PomodoroTimer({super.key});

  @override
  State<PomodoroTimer> createState() => PomodoroTimerStates();
}

class PomodoroTimerStates extends State<PomodoroTimer> {
  int totalTime = 1500;
  bool isRunning = false;
  bool isWorking = true;
  late Timer timer;

  void startTimer() {
    if (isRunning) {
      timer.cancel();
      setState(() {
        totalTime = 1500;
        isRunning = false;
      });
    } else {
      setState(() => isRunning = true);
      timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (totalTime > 0) {
          setState(() {
            totalTime--;
          });
        } else {
          setState(() {
            totalTime = 600;
            isWorking = !isWorking;
          });
        }
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: buildCustomAppbar(
          isWorking: isWorking,
          context: context,
          onSettingsReturn: () => setState(() {}),
        ),
        body: Container(
          decoration: pomodoroBackground(
            isWorking: isWorking,
            backgroundShadow: SettingsAppState.backgroundShadow
          ),
          child: Stack(
            children: [
              pomodoroTimerWidget(
                totalTime: totalTime,
                isWorking: isWorking
              ),

              pomdoroButtonWidget(
                isRunning: isRunning,
                isWorking: isWorking,
                onPressed: startTimer
              )
            ]
          )
        ),
      )
    );
  }
}