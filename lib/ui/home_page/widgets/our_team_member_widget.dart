import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OurTeamMemberWidget extends StatelessWidget {
  const OurTeamMemberWidget({
    Key? key,
    required this.imagePath,
    required this.designation,
    required this.name,
    required this.colors,
  }) : super(key: key);
  final String imagePath;
  final String name;
  final String designation;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 295.h,
      width: 312.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        image: DecorationImage(
          image: AssetImage(
            imagePath,
          ),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          color: const Color(0xFF8668F2),
          width: 7.0,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 27.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            designation,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
      alignment: Alignment.bottomCenter,
    );
  }
}
