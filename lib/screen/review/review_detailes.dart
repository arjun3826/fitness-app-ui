import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/profile.png"),
                        radius: 16),
                    const SizedBox(width: 19),
                    const Text("Sharon Jem"),
                    const SizedBox(width: 16),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xff004EFF),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 12, right: 12, top: 2, bottom: 2),
                        child: Text(
                          "4.8",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Text("2d ago")
                  ],
                ),
                const SizedBox(height: 21),
                const Text(
                    "Had such an amazing session with Maria. She instantly picked up on the level of my fitness and adjusted the workout to suit me whilst also pushing me to my limits. Nice journey for this app,She instantly picked up on the level of my fitness and adjusted the workout ."),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
