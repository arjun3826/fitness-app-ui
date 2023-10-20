import 'package:fitness/screen/language/language_screen.dart';
import 'package:flutter/material.dart';

import '../../bottom_navigation.dart';
import 'setting_wigets.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F6F9),
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Image(
                  fit: BoxFit.contain,
                  image: AssetImage("assets/images/555.png"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 75,
                        backgroundImage:
                            AssetImage("assets/images/Rectangle02.png"),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                        width: 99,
                        child: Row(
                          children: [
                            Text(
                              "Mr.Arjun",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.edit,
                              size: 20,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 318,
                top: 155,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.add_a_photo_rounded,
                    color: Color(0xff7047EB),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 25),
          const SettingWigets(
            icon: Icons.notifications,
            text: "Notification",
          ),
          SettingWigets(
              icon: Icons.watch_later_rounded,
              text: "Training",
              onClick: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => const BottomNav(currentIndex: 1)),
                    (Route<dynamic> route) => false);
              }),
          SettingWigets(icon: Icons.bar_chart, text: "Report", onClick: () {}),
          SettingWigets(
              icon: Icons.dark_mode,
              text: "Dark Mode",
              option: Icons.toggle_off,
              onClick: () {}),
          SettingWigets(
              icon: Icons.language,
              text: "Language",
              onClick: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const LanguageScreen()),
                );
              }),
          SettingWigets(icon: Icons.star, text: "Rate App", onClick: () {}),
          SettingWigets(icon: Icons.share, text: "Share App", onClick: () {}),
          SettingWigets(icon: Icons.error, text: "About Us", onClick: () {}),
        ],
      ),
    );
  }
}
