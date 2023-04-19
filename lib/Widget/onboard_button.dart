import 'package:flutter/material.dart';
import 'package:megabank/Constant/app_color.dart';

class OnboardButton extends StatelessWidget {
  final String title;
  final Color color;

  const OnboardButton({required this.title, required this.color});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
            color: color,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(fontSize: 16, color: appColor2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
