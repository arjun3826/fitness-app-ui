import 'package:fitness/screen/review/review_detailes.dart';
import 'package:flutter/material.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F6F9),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: const Text(
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
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 36),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "4.6",
                  style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff7047EB)),
                ),
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
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.topRight,
              child: Text(
                "174 Ratings",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(height: 40),
            const Reviews(),
            const Reviews(),
            const Reviews(),
            const Reviews(),
            const SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 47,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ))),
                onPressed: () {},
                child: const Text(
                  "Write a Review",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
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
              style: const TextStyle(fontSize: 10),
            ),
            const SizedBox(width: 5),
            Stack(
              children: [
                Container(
                  width: 218,
                  height: 8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: const Color.fromARGB(48, 137, 152, 172)),
                ),
                Container(
                  height: 8,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: const Color(0xff7047EB),
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
