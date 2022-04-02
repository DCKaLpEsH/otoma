import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'circle_avatar_widget.dart';

class TestimonialCardWidget extends StatelessWidget {
  const TestimonialCardWidget({
    Key? key,
    required this.testimony,
    required this.imagePath,
    required this.name,
    required this.colors,
  }) : super(key: key);
  final String imagePath;
  final String testimony;
  final String name;
  final List<Color> colors;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420.h,
      width: 438.w,
      padding: EdgeInsets.symmetric(
        vertical: 49.h,
        horizontal: 40.w,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF1B1B26),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '''“''',
            style: TextStyle(
              fontSize: 55.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const Spacer(),
          Text(
            testimony,
            style: TextStyle(
              color: Colors.white,
              fontSize: 23.sp,
              letterSpacing: 3,
            ),
          ),
          const Spacer(),
          Row(
            children: [
              CircularAvatarWidget(
                colors: colors,
                imagePath: imagePath,
              ),
              SizedBox(
                width: 20.w,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "\nVerified Artist",
                      style: TextStyle(
                        color: Color(0xFF8790A2),
                        fontSize: 19.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
