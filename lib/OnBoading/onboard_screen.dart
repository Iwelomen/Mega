import 'package:flutter/material.dart';
import 'package:megabank/Constant/app_color.dart';
import 'package:megabank/Utils/navigator.dart';
import '../Constant/string.dart';
import '../Pages/landing_page.dart';
import '../Widget/onboard_button.dart';
import 'onboard_widget.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int pageLength = 2;

  int bottomSelectedIndex = 0;

  PageController pageController =
      PageController(initialPage: 0, keepPage: true);

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor2,
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: pageController,
              physics: BouncingScrollPhysics(),
              children: [
                OnboardWidget(headerText: onboardFirstHeaderText),
                OnboardWidget(headerText: onboardSecondHeaderText),
              ],
              onPageChanged: (value) {
                pageChanged(value);
              },
            ),
            Positioned(
              left: 20,
              right: 20,
              bottom: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      bottomSelectedIndex += 1;
                      pageController.animateToPage(bottomSelectedIndex,
                          duration: const Duration(milliseconds: 50),
                          curve: Curves.easeIn);

                      if (bottomSelectedIndex == 2) {
                        navigateReplace(context, InitialScreen());
                      }
                    },
                    child: bottomSelectedIndex == 1
                        ? const OnboardButton(
                            title: continueTxt,
                            color: appColor1,
                          )
                        : const OnboardButton(title: nextTxt, color: appColor5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
