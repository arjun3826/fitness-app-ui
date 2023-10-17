import 'package:flutter/material.dart';

class SettingWigets extends StatelessWidget {
  final IconData icon;
  final String text;

  const SettingWigets({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: EdgeInsets.only(left: 10, top: 15, bottom: 15),
              child: Row(
                children: [
                  Icon(icon),
                  SizedBox(width: 38),
                  Text(
                    text,
                    style: TextStyle(fontSize: 16, fontFamily: "Poppins"),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        )
      ],
    );
  }
}

class DarkMode extends StatelessWidget {
  const DarkMode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding:
                  EdgeInsets.only(left: 10, top: 15, bottom: 15, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.dark_mode),
                        SizedBox(width: 38),
                        Text(
                          "Dark Mode",
                          style: TextStyle(fontSize: 16, fontFamily: "Poppins"),
                        )
                      ],
                    ),
                  ),
                  Icon(Icons.toggle_off)
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        )
      ],
    );
  }
}
