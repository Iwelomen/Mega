import 'package:flutter/material.dart';

import '../Constant/app_color.dart';

class RowWidget extends StatelessWidget {
  final String firstItem;
  final String secondItem;

  RowWidget({required this.firstItem, required this.secondItem});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              firstItem,
              style: const TextStyle(
                color: appColor4,
                fontSize: 12,
              ),
            ),
            Text(
              secondItem,
              style: const TextStyle(
                color: appColor3,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        const Divider(thickness: 1)
      ],
    );
  }
}
