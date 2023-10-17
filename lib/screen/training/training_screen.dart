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
    "assets/images/Rectangle 128.png",
    "assets/images/Rectangle 129.png",
    "assets/images/Rectangle 126.png",
    "assets/images/Rectangle 121.png",
    "assets/images/Rectangle 128.png"
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
              color: Colors.black, fontFamily: "Poppins", fontSize: 16),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(child: Text("this is header")),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     IconButton(
              //       onPressed: () {},
              //       icon: const Icon(Icons.arrow_back),
              //     ),
              //     const Text(
              //       "Training ",
              //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
              //     ),
              //     Container(
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(40),
              //         color: Colors.white,
              //       ),
              //       child: Padding(
              //         padding: const EdgeInsets.all(10),
              //         child: IconButton(
              //           onPressed: () {},
              //           icon: const Icon(Icons.more_vert),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
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
