import 'package:fitness/screen/home/home_screen.dart';
import 'package:fitness/screen/report/report_screen.dart';
import 'package:fitness/screen/setting/settings.dart';
import 'package:fitness/screen/training/training_screen.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int myIndex = 0;

  List screens = [
    const HomeScreen(),
    const TrainingScreen(),
    const ReportScreen(),
    const SettingScreen(),
  ];
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(myIndex),
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
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
