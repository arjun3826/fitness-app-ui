// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';

import 'traning_list_widget.dart';

class TrainingScreen extends StatefulWidget {
  const TrainingScreen({super.key});

  @override
  State<TrainingScreen> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {
  int myIndex = 0;
  List<String> traningImages = [
    "assets/images/girl_workout.png",
    "assets/images/abs.png",
    "assets/images/back.png",
    "assets/images/deadlifting.png",
    "assets/images/Meditation.png"
  ];

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
          "Training",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w800),
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
                    Image.asset("assets/icons/feedback.png"),
                    const SizedBox(width: 30),
                    const Text("Feedback")
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
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              Column(
                children: List.generate(
                    traningImages.length,
                    (index) => Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            TrainingListWidget(
                                image: AssetImage(traningImages[index]),
                                onPressed: () {}),
                            const SizedBox(height: 15),
                          ],
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
