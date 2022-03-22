import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Otoma",
            style: TextStyle(
              fontSize: 49.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Container(
            height: 8,
            width: 8,
            margin: EdgeInsets.only(
              left: 2.w,
            ),
            color: const Color(0xFFFFB281),
          ),
        ],
      ),
    );
  }
}
