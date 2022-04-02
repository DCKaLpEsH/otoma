import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/logo_widget.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 140.w,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF4F486A),
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.only(
        top: 78.h,
      ),
      height: 515.h,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 78.w),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const LogoWidget(),
                      SizedBox(
                        height: 18.h,
                      ),
                      Text(
                        "Find the best, be the best",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.sp,
                        ),
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/svgs/linkedin.svg",
                          ),
                          SizedBox(
                            width: 18.w,
                          ),
                          SvgPicture.asset(
                            "assets/svgs/behance.svg",
                          ),
                          SizedBox(
                            width: 18.w,
                          ),
                          SvgPicture.asset(
                            "assets/svgs/dribbble.svg",
                          ),
                          SizedBox(
                            width: 18.w,
                          ),
                          SvgPicture.asset(
                            "assets/svgs/instagram.svg",
                          ),
                          SizedBox(
                            width: 18.w,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Become partner",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Earn some serious cash promoting Otoma.",
                        style: TextStyle(
                          color: const Color(0xFF8790A2),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 49.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Sell Products",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Text(
                        "Earn 70% and more on all sales",
                        style: TextStyle(
                          color: const Color(0xFF8790A2),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Menu",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Overview",
                        style: TextStyle(
                          color: const Color(0xFF8790A2),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Template",
                        style: TextStyle(
                          color: const Color(0xFF8790A2),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Contact",
                        style: TextStyle(
                          color: const Color(0xFF8790A2),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Join our growing discord community",
                        style: TextStyle(
                          color: const Color(0xFF8790A2),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 19.h,
                      ),
                      Text(
                        "Exclusive offers, tips and goodies, you will find everything in our newsletter!",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                        ),
                      ),
                      SizedBox(
                        height: 19.h,
                      ),
                      Container(
                        // width: 350.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF5C6BC0),
                            width: 5,
                          ),
                          borderRadius: BorderRadius.circular(14),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              "assets/svgs/discord.svg",
                            ),
                            Text(
                              "Enter your email to get an invite",
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF8E8E8E),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward,
                              color: Color(0xFF5C6BC0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            height: 95.h,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(1.0, -1.0),
                end: Alignment(-1.0, 1.0),
                colors: [Color(0xff8c89c8), Color(0xffd295c2)],
                stops: [0.0, 1.0],
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50.0),
                bottomLeft: Radius.circular(50.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 11.w,
                  ),
                  padding: const EdgeInsets.all(18.0),
                  decoration: BoxDecoration(
                    color: const Color(0xfff5f5f5),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: SvgPicture.asset(
                    "assets/svgs/visa.svg",
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 11.w,
                  ),
                  padding: const EdgeInsets.all(18.0),
                  decoration: BoxDecoration(
                    color: const Color(0xfff5f5f5),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: SvgPicture.asset(
                    "assets/svgs/mastercard.svg",
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 11.w,
                  ),
                  padding: const EdgeInsets.all(18.0),
                  decoration: BoxDecoration(
                    color: const Color(0xfff5f5f5),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: SvgPicture.asset(
                    "assets/svgs/paypal.svg",
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 11.w,
                  ),
                  padding: const EdgeInsets.all(18.0),
                  decoration: BoxDecoration(
                    color: const Color(0xfff5f5f5),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: SvgPicture.asset(
                    "assets/svgs/maestro.svg",
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
