import 'package:flutter/material.dart';

class ReportCardWigets extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final String abc;
  final String kcl;
  const ReportCardWigets(
      {super.key,
      required this.text,
      required this.icon,
      required this.color,
      required this.abc,
      required this.kcl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 160,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  size: 17,
                  color: color,
                ),
                SizedBox(width: 10),
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Poppins",
                      color: Color(0xff121826)),
                )
              ],
            ),
            SizedBox(height: 14),
            Row(
              children: [
                Text(
                  abc,
                  style: TextStyle(
                      fontSize: 18, fontFamily: "Poppins", color: Colors.black),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(kcl,
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Poppins",
                        color: Colors.black))
              ],
            ),
            SizedBox(height: 12),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.black,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "This week",
                  style: TextStyle(
                      color: Colors.black, fontFamily: "Poppins", fontSize: 12),
                ),
                IconButton.filled(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 14,
                      color: Colors.black,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
