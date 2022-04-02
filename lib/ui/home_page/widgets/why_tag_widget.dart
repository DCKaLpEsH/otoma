import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class WhyTagsWidget extends StatelessWidget {
  const WhyTagsWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.outlineColor,
  }) : super(key: key);
  final String title;
  final String subtitle;
  final String icon;
  final Color outlineColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 313.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(17.5),
            decoration: BoxDecoration(
              border: Border.all(
                color: outlineColor,
                width: 1.5,
              ),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              "assets/svgs/$icon.svg",
            ),
            alignment: Alignment.center,
          ),
          SizedBox(
            width: 41.w,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.sp,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: const Color(0xFF8790A2),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
