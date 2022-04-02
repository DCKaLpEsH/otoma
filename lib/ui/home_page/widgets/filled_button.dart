import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilledButton extends StatelessWidget {
  const FilledButton({
    Key? key,
    required this.title,
    required this.color,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
          ),
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          horizontal: 40.w,
          vertical: 13.h,
        ),
      ),
    );
  }
}
