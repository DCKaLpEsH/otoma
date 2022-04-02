import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhyOtomaWidget extends StatelessWidget {
  const WhyOtomaWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 3,
              sigmaY: 3,
            ),
            child: Container(),
          ),
          Center(
            child: Container(
              height: 859.h,
              width: 1640.w,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFF8668F2),
                  width: 1.5,
                ),
                color: const Color(0xFF4F486A).withOpacity(0.64),
                borderRadius: BorderRadius.circular(110),
              ),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 127.w,
                        left: 100.w,
                      ),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Image.asset(
                              "assets/pngs/pencil_man.png",
                              height: 685.h,
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Why ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 75.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "Otoma ",
                                        style: TextStyle(
                                          color: const Color(0xFFFFB281),
                                          fontSize: 75.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "is a new beginning.",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 75.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 36.h,
                                ),
                                Text(
                                  "Et quoniam mirari posse quosdam peregrinos existimo haec lecturos forsitan, si contigerit,  cum oratio ad ea monstranda deflexerit quae Romae gererentur",
                                  style: TextStyle(
                                    color: const Color(0xFF8790A2),
                                    fontSize: 20.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 45.h,
                                ),
                                Container(
                                  height: 60.sp,
                                  width: 240.sp,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF8668F2),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Find design",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.8,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF8C89C8),
                            Color(0xFFD295C2),
                          ],
                          begin: Alignment.topRight,
                          end: Alignment(-1, 1.2),
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(110),
                          bottomRight: Radius.circular(110),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 1370,
            top: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Stack(
                children: [
                  Transform.rotate(
                    angle: -0.4,
                    child: Image.asset(
                      "assets/pngs/hourglass.png",
                    ),
                  ),
                  BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 3,
                      sigmaY: 3,
                    ),
                    child: Container(),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Stack(
                children: [
                  Transform.rotate(
                    angle: 0.4,
                    child: Image.asset(
                      "assets/pngs/phone.png",
                    ),
                  ),
                  BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 3,
                      sigmaY: 3,
                    ),
                    child: Container(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
