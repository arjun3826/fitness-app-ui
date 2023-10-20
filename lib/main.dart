import 'package:flutter/material.dart';

import 'screen/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xff7047EB),
            onPrimary: Colors.white,
            secondary: Color(0xff004EFF),
            onSecondary: Colors.white,
            error: Colors.red,
            onError: Colors.white,
            background: Color(0xffF2F6F9),
            onBackground: Colors.black,
            surface: Color(0xffF2F6F9),
            onSurface: Colors.black),
        fontFamily: 'Poppins',
      ),
      home: const SplashScreen(),
      // initialRoute: RouteName.Report,
      // onGenerateRoute: Routes.generateRoute,
    );
  }
}
