import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:megabank/Constant/app_color.dart';

class OnboardWidget extends StatelessWidget {
  final String headerText;

  OnboardWidget({required this.headerText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              headerText,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 30, color: appColor3),
            ),
          ),
        )
      ],
    );
  }
}
