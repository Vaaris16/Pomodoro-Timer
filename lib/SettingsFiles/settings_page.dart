import 'package:flutter/material.dart';
import '/SettingsFiles/settings_appBar.dart';
import '/SettingsFiles/settings_container.dart';

class SettingsApp extends StatefulWidget {
  const SettingsApp({super.key});

  @override
  State<SettingsApp> createState() => SettingsAppState();
}

class SettingsAppState extends State<SettingsApp> {
  static bool textShadow = true;
  static bool timerShadow = true;
  static bool backgroundShadow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildSettingsState(
        textShadow: textShadow,
        timerShadow: timerShadow,
        backgroundShadow: backgroundShadow,
        context: context,
      ),
      body: Stack(
        children: [
          settingsBackground(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Padding(
              padding: const EdgeInsets.only(top:175.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Text Shadow",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 25,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          textShadow ? Icons.toggle_on : Icons.toggle_off,
                          color: textShadow ? Colors.green : Colors.red,
                        ),
                        onPressed: () {
                          setState(() {
                            textShadow = !textShadow;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Timer Shadow",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Roboto",
                          fontSize: 25,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          timerShadow ? Icons.toggle_on : Icons.toggle_off,
                          color: timerShadow ? Colors.green : Colors.red,
                          size: 25,
                        ),
                        onPressed: () {
                          setState(() {
                            timerShadow = !timerShadow;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Background Shadow",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Roboto",
                          fontSize: 25,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          backgroundShadow ? Icons.toggle_on : Icons.toggle_off,
                          color: backgroundShadow ? Colors.green : Colors.red,
                          size: 25,
                        ),
                        onPressed: () {
                          setState(() {
                            backgroundShadow = !backgroundShadow;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}