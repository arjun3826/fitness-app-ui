import 'package:flutter/material.dart';

import 'traning_details.dart';

class TrainingListWidget extends StatelessWidget {
  final ImageProvider image;
  final Function onPressed;
  const TrainingListWidget(
      {super.key, required this.image, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const TrainingDetailScreen()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 149,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 12, top: 12, bottom: 12, right: 12),
              child: Container(
                height: 124,
                width: 118,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                ),
                child: Image(
                  image: image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Deep Amrap Burner",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.local_fire_department,
                              color: Color(0xff1FA755),
                              size: 17,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "125kcl",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            )
                          ],
                        ),
                        SizedBox(width: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.watch_later_rounded,
                              color: Color(0xff1FA755),
                              size: 17,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "120min",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            // backgroundColor: const Color(0xff7047EB),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text("Beginner",
                              style: TextStyle(
                                fontSize: 11,
                              )),
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              // backgroundColor: const Color(0xff7047EB),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Full body",
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xffFBC203),
                              size: 16,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "4.5 ",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(width: 8),
                            Text(
                              "10k Review ",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const TrainingDetailScreen()));
                          },
                          icon: const Icon(Icons.arrow_forward_ios_rounded,
                              size: 14),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
