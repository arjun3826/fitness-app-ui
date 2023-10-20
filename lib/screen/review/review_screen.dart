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
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            position: PopupMenuPosition.under,
            icon: const Icon(Icons.more_vert),
            onSelected: (newValue) {
              // add this property
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 0,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icons/feedback.png",
                    ),
                    const SizedBox(width: 30),
                    const Text(
                      "Feedback",
                    )
                  ],
                ),
              ),
              PopupMenuItem(
                value: 1,
                child: Row(
                  children: [
                    Image.asset("assets/icons/help.png"),
                    const SizedBox(width: 30),
                    const Text("Help")
                  ],
                ),
              ),
            ],
          ),
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
                      rating: 5,
                      count: 10,
                      total: 140,
                    ),
                    Ratings(
                      rating: 4,
                      count: 50,
                      total: 140,
                    ),
                    Ratings(
                      rating: 3,
                      count: 20,
                      total: 140,
                    ),
                    Ratings(
                      rating: 2,
                      count: 30,
                      total: 140,
                    ),
                    Ratings(
                      rating: 1,
                      count: 20,
                      total: 140,
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
            const Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Reviews(),
                    Reviews(),
                    Reviews(),
                    Reviews(),
                    Reviews(),
                    Reviews(),
                  ],
                ),
              ),
            ),
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
  final int rating;
  final int count;
  final int total;
  const Ratings(
      {super.key,
      required this.rating,
      required this.count,
      required this.total});

  @override
  Widget build(BuildContext context) {
    double barWidth = MediaQuery.of(context).size.width * 0.4;
    return Column(
      children: [
        Row(
          children: [
            Text(
              rating.toString(),
              style: const TextStyle(fontSize: 10),
            ),
            const SizedBox(width: 5),
            Stack(
              children: [
                Container(
                  width: barWidth,
                  height: 8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: const Color.fromARGB(48, 137, 152, 172)),
                ),
                Container(
                  height: 8,
                  width: (count / total) * barWidth,
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
