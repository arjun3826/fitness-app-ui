import 'package:fitness/bottom_navigation.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // fit: StackFit.expand,
        children: [
          Image(
            width: MediaQuery.of(context).size.width,
            height: double.infinity,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            image: const AssetImage(
              "assets/images/splash.jpg",
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              const Color(0xFF161349).withOpacity(0.2),
              const Color(0xFF7047EB).withOpacity(0.2),
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 38, right: 38, top: 65, bottom: 56),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Stronger Every Day",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const BottomNav()));
                  },
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        // height: 48,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color.fromARGB(47, 217, 217, 217),
                            border: Border.all(
                                width: 1,
                                color: const Color(0xff337FFF),
                                style: BorderStyle.solid)),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20, top: 6, bottom: 6),
                          child: Row(
                            children: [
                              Image(
                                width: 45,
                                image: AssetImage("assets/icons/Facebook.png"),
                              ),
                              SizedBox(width: 20),
                              Text(
                                "CONNECT WITH FACEBOOK",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        // height: 48,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color.fromARGB(47, 217, 217, 217),
                            border: Border.all(
                                width: 1,
                                color: const Color(0xff337FFF),
                                style: BorderStyle.solid)),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20, top: 6, bottom: 6),
                          child: Row(
                            children: [
                              Image(
                                  width: 45,
                                  image: AssetImage("assets/icons/google.png")),
                              SizedBox(width: 20),
                              Text(
                                "CONNECT WITH GOOGLE",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 161),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("By signing in you agree to ",
                        style:
                            TextStyle(color: Color(0xff8998AC), fontSize: 12)),
                    Text(
                      "Term of service",
                      style: TextStyle(color: Color(0xff004EFF), fontSize: 12),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
