import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  // var scroll;
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F6F9),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Monday,02 Oct"),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Good Morning, Arjun!",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Badge(
                        child: Icon(Icons.notifications),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Workouts Types",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "See All",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xff7047EB)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                scroll(const AssetImage("assets/images/Rectangle 120.png"),
                    "Cardio"),
                const SizedBox(
                  width: 20,
                ),
                scroll(const AssetImage("assets/images/Rectangle 121.png"),
                    "Meditation"),
                const SizedBox(
                  width: 20,
                ),
                scroll(const AssetImage("assets/images/Rectangle 122.png"),
                    "Yoga"),
                const SizedBox(
                  width: 20,
                ),
                scroll(const AssetImage("assets/images/Rectangle 123.png"),
                    "Strength"),
                const SizedBox(
                  width: 20,
                ),
                scroll(const AssetImage("assets/images/Rectangle 129.png"),
                    "Deadlift"),
                const SizedBox(
                  width: 20,
                ),
                scroll(const AssetImage("assets/images/Rectangle 121.png"),
                    "Meditation"),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Trending Workouts",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "See All",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xff7047EB)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  scroll2(const AssetImage("assets/images/Rectangle 124.png"),
                      "Total Body\nTraining"),
                  const SizedBox(
                    width: 20,
                  ),
                  scroll2(const AssetImage("assets/images/Rectangle 125.png"),
                      "Strength With\nBand"),
                  const SizedBox(
                    width: 20,
                  ),
                  scroll2(const AssetImage("assets/images/Rectangle 126.png"),
                      "Deadlifiting"),
                  const SizedBox(
                    width: 20,
                  ),
                  scroll2(const AssetImage("assets/images/Rectangle 127.png"),
                      "Total Body\n Training"),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Additional training",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                vertical(const AssetImage("assets/images/Rectangle 128.png"),
                    "Deep Amrap Burner"),
                const SizedBox(
                  height: 13,
                ),
                vertical(const AssetImage("assets/images/Rectangle 129.png"),
                    "Deep Butt Sculp"),
                const SizedBox(
                  height: 13,
                ),
                vertical(const AssetImage("assets/images/Rectangle 125.png"),
                    "Strength With\nBand"),
                const SizedBox(
                  height: 13,
                ),
                vertical(const AssetImage("assets/images/Rectangle 126.png"),
                    "Deadlifting"),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        showUnselectedLabels: true,
        unselectedLabelStyle:
            const TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
        unselectedItemColor: const Color.fromARGB(225, 137, 152, 172),
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        backgroundColor: Colors.white,
        selectedLabelStyle:
            const TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
        selectedItemColor: const Color(0xff7047EB),
        selectedIconTheme: const IconThemeData(
          color: Color(0xff7047EB),
        ),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 22,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.watch_later_rounded,
                size: 22,
              ),
              label: "Training"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bar_chart,
                size: 22,
              ),
              label: "Report"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 22,
              ),
              label: "Setting"),
        ],
      ),
    );
  }
}

scroll(
  ImageProvider image,
  String text,
) {
  return Column(
    children: [
      Container(
        clipBehavior: Clip.antiAlias,
        width: 70,
        height: 70,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Image(fit: BoxFit.cover, image: image),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(text)
    ],
  );
}

scroll2(
  ImageProvider image,
  String text,
) {
  return Stack(
    children: [
      Container(
          clipBehavior: Clip.antiAlias,
          width: 130,
          height: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Image(
            fit: BoxFit.cover,
            image: image,
            colorBlendMode: BlendMode.overlay,
          )),
      Positioned(
        bottom: 10,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    letterSpacing: 0.9),
              ),
              const SizedBox(
                height: 7,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.local_fire_department,
                        color: Colors.white,
                        size: 18,
                      ),
                      Text(
                        "120min",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.watch_later_rounded,
                        color: Colors.white,
                        size: 18,
                      ),
                      Text(
                        "125kcl",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      )
    ],
  );
}

vertical(ImageProvider image, String text) {
  return Row(
    children: [
      Container(
        clipBehavior: Clip.antiAlias,
        width: 95,
        height: 80,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Image(
          image: image,
          fit: BoxFit.cover,
        ),
      ),
      const SizedBox(
        width: 27,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
                fontWeight: FontWeight.w800, color: Colors.black),
          ),
          const SizedBox(
            height: 6,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Color(0xff1FA755),
                    size: 18,
                  ),
                  Text(
                    "120min",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  )
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Row(
                children: [
                  Icon(
                    Icons.watch_later_rounded,
                    color: Color(0xff1FA755),
                    size: 18,
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
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          const Text("Beginner - Full body")
        ],
      )
    ],
  );
}
