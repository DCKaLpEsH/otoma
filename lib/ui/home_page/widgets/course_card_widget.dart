import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otoma/ui/home_page/widgets/button_outlined.dart';

import '../home_page.dart';
import 'filled_button.dart';

class CourseCardWidget extends StatelessWidget {
  const CourseCardWidget({
    Key? key,
    required this.categoryColor,
    required this.price,
    required this.filledButtonColor,
    required this.courseImagePath,
    required this.category,
  }) : super(key: key);
  final String price;
  final Color categoryColor;
  final String category;
  final Color filledButtonColor;
  final String courseImagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      width: 427.w,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 100.h,
              width: 426.w,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF8C89C8),
                    Color(0xFFD295C2),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 500.h,
              width: 427.w,
              decoration: BoxDecoration(
                color: const Color(0xFF242632).withOpacity(0.5),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 427.w,
                    padding: EdgeInsets.only(
                      left: 13.w,
                      right: 13.w,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF242632),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 13.w),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(32),
                        child: Image.asset(
                          courseImagePath,
                          fit: BoxFit.fill,
                          height: 257.h,
                          width: 403.w,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 13.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // width: 120.w,
                          decoration: BoxDecoration(
                            color: categoryColor.withOpacity(0.43),
                            borderRadius: BorderRadius.circular(34),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 32.w,
                            vertical: 10.h,
                          ),
                          child: Text(
                            category,
                            style: TextStyle(
                              color: categoryColor,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          // alignment: Alignment.center,
                        ),
                        SizedBox(
                          height: 21.h,
                        ),
                        Text(
                          "Set Title",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.sp,
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          "Banner, Logo, Emoji, Sub title …",
                          style: TextStyle(
                            color: const Color(0xFF8790A2),
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                          ),
                        ),
                        SizedBox(
                          height: 19.h,
                        ),
                        Row(
                          children: [
                            ButtonOutlined(
                              title: "View More",
                              onTap: () {},
                            ),
                            SizedBox(
                              width: 21.w,
                            ),
                            FilledButton(
                              title: price,
                              color: filledButtonColor,
                              onTap: () {},
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
