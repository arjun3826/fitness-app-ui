import 'package:fitness/notification/notification.dart';
import 'package:flutter/material.dart';

class Notification_home extends StatelessWidget {
  const Notification_home({super.key});

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
                Text(
                  "Today",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 24,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.4,
                  height: 1,
                  color: Colors.black,
                )
              ],
            ),
            SizedBox(height: 25),
            Notification(),
            Notification(),
            Notification(),
            Notification(),
            SizedBox(height: 16),
            Row(
              children: [
                Text(
                  "Yesterday",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 24,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: 1,
                  color: Colors.black,
                )
              ],
            ),
            SizedBox(height: 25),
            Notification(),
            Notification(),
            Notification(),
            Notification(),
          ],
        ),
      ),
    );
  }
}

Notification() {
  return Column(
    children: [
      Row(
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            width: 50,
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Image(
              image: AssetImage("assets/images/notification.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 25),
          Column(
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
          Spacer(),
          Text(
            "30mins ago",
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
      SizedBox(
        height: 24,
      )
    ],
  );
}
