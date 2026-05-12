import 'package:flutter/material.dart';
import '../SettingsFiles/settings_page.dart';

AppBar buildCustomAppbar({
  required bool isWorking,
  required BuildContext context,
  required VoidCallback onSettingsReturn,
}) {
  return AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(
                Icons.settings_outlined,
                size: 40,
                color: Colors.red.withOpacity(0.5),
              ),
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsApp()),
                );
                if (result == true) {
                  onSettingsReturn();
                }
              },
            ),
          ],
          title: Stack(
            children: [
              Text(
                isWorking ? 'Work' : 'Break',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Anton',
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..color = isWorking ? Colors.red : Colors.green
                    ..strokeWidth = 1.5,
                  shadows: SettingsAppState.textShadow
                      ? [
                          Shadow(
                            color: isWorking ? Colors.red : Colors.green,
                            blurRadius: 25,
                            offset: Offset(2, 2),
                          )
                        ]
                      : [
                          Shadow(
                            color: Colors.black,
                            blurRadius: 0,
                            offset: Offset(0, 0),
                          )
                        ],
                ),
              ),
              Text(
                isWorking ? 'Work' : 'Break',
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Anton',
                ),
              ),
            ],
          ),
        );
}
