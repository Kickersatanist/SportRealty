import 'package:flutter/material.dart';
import 'package:sport_reality/pages/home.dart';
import 'package:sport_reality/screens/profileScreen.dart';
import 'package:sport_reality/screens/registerScreen.dart';
import 'package:sport_reality/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: SplashScreen(),
      routes: {
        '/register': (context) => registerScreen(),
        '/home': (context) => SplashScreen(),
        '/profile': (context) => ProfileScreen()
      },
    );
  }
}
