import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UsedByBrandsWidget extends StatelessWidget {
  const UsedByBrandsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Used by brands and thousands of designers worldwide.",
          style: TextStyle(
            color: Color(0xFF7A8393),
            fontSize: 35.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/pngs/adobe.png",
            ),
            Image.asset(
              "assets/pngs/spotify.png",
            ),
            Image.asset(
              "assets/pngs/facebook.png",
            ),
            Image.asset(
              "assets/pngs/Nike.png",
            ),
            Image.asset(
              "assets/pngs/Slack.png",
            ),
            Image.asset(
              "assets/pngs/google.png",
            ),
          ],
        )
      ],
    );
  }
}
