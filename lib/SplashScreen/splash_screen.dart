import 'dart:async';
import 'package:flutter/material.dart';
import 'package:megabank/Constant/app_color.dart';
import 'package:megabank/Utils/navigator.dart';
import '../OnBoading/onboard_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () async {
      navigateReplace(context, OnboardingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor2,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                      fontSize: 16.0, color: appColor3),
                  children: <TextSpan>[
                    TextSpan(text: "Welcome to"),
                    TextSpan(
                        text: "\nMegaBank",
                        style: TextStyle(
                          fontSize: 50,
                            color: appColor1,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
