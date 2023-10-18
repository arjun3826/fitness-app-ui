import 'package:flutter/material.dart';

class NotificationHome extends StatelessWidget {
  const NotificationHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: const Text(
          "Notification",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  "Today",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  width: 24,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.4,
                  height: 1,
                  color: Colors.black,
                )
              ],
            ),
            const SizedBox(height: 25),
            const Notification(),
            const Notification(),
            const Notification(),
            const Notification(),
            const SizedBox(height: 16),
            Row(
              children: [
                const Text(
                  "Yesterday",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  width: 24,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: 1,
                  color: Colors.black,
                )
              ],
            ),
            const SizedBox(height: 25),
            const Notification(),
            const Notification(),
            const Notification(),
            const Notification(),
          ],
        ),
      ),
    );
  }
}

class Notification extends StatelessWidget {
  const Notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              width: 50,
              height: 50,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: const Image(
                image: AssetImage("assets/images/notification.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 25),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Edward white",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                ),
                Text("You complete Your workout...")
              ],
            ),
            const Spacer(),
            const Text(
              "30mins ago",
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
        const SizedBox(
          height: 24,
        )
      ],
    );
  }
}
