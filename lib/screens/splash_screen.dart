import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sport_reality/pages/home.dart';
import 'package:sport_reality/screens/loginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => const loginScreen(),
      ));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.maxFinite,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft),
          ),
          child: Image.asset('images/logo.png')
          // child: const Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     // Icon(
          //     //   Icons.edit,
          //     //   size: 80,
          //     //   color: Colors.white,
          //     // ),
          //     // SizedBox(
          //     //   height: 20,
          //     // ),
          //     // Text(
          //     //   'SPORTREALTY',
          //     //   style: TextStyle(color: Colors.white, fontSize: 32),
          //     // )
          //   ],
          // ),
          ),
    );
  }
}
