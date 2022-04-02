import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularAvatarWidget extends StatelessWidget {
  const CircularAvatarWidget({
    Key? key,
    required this.colors,
    required this.imagePath,
  }) : super(key: key);
  final List<Color> colors;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 69.h,
      width: 69.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        image: DecorationImage(
          image: AssetImage(
            imagePath,
          ),
        ),
      ),
    );
  }
}
