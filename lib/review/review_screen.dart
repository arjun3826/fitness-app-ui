import 'package:fitness/screen/training/traning_details.dart';
import 'package:flutter/material.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F6F9),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text(
          "Review",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 36),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("4.6"),
                Column(
                  children: [
                    Ratings(
                      text: "5",
                      width: 110,
                    ),
                    Ratings(
                      text: "4",
                      width: 150,
                    ),
                    Ratings(
                      text: "3",
                      width: 90,
                    ),
                    Ratings(
                      text: "2",
                      width: 50,
                    ),
                    Ratings(
                      text: "1",
                      width: 10,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Ratings extends StatelessWidget {
  final String text;
  final double width;
  const Ratings({super.key, required this.text, required this.width});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 10),
            ),
            SizedBox(width: 5),
            Stack(
              children: [
                Container(
                  width: 218,
                  height: 8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Color.fromARGB(48, 137, 152, 172)),
                ),
                Container(
                  height: 8,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color(0xff7047EB),
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
