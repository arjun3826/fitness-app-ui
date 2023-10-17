import 'package:flutter/material.dart';

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
      backgroundColor: Color(0xffF2F6F9),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image(
                  fit: BoxFit.cover,
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
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w800),
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
                  child: Icon(
                    Icons.add_a_photo_rounded,
                    color: Color(0xff7047EB),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 25),
          SettingWigets(icon: Icons.home, text: "Home"),
          SettingWigets(icon: Icons.watch_later_rounded, text: "Training"),
          SettingWigets(icon: Icons.bar_chart, text: "Report"),
          DarkMode(),
          SettingWigets(icon: Icons.language, text: "Language"),
          SettingWigets(icon: Icons.star, text: "Rate App"),
          SettingWigets(icon: Icons.share, text: "Share App"),
          SettingWigets(icon: Icons.error, text: "About Us"),
        ],
      ),
    );
  }
}
