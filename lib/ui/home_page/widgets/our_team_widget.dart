import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'our_team_member_widget.dart';

class OurTeamWidget extends StatelessWidget {
  const OurTeamWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 80.w,
      ),
      height: 667.h,
      child: Row(
        children: [
          Flexible(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Our ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 85.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "team !",
                    style: TextStyle(
                      color: const Color(0xFFFFB281),
                      fontSize: 85.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        "\n\nEt quoniam mirari posse quosdam peregrinos existimo haec lecturos forsitan, si contigerit, quamobrem cum oratio ad ea monstranda deflexerit quae Romae gererentur",
                    style: TextStyle(
                      color: const Color(0xFF8790A2),
                      fontSize: 20.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 300.w,
          ),
          Flexible(
            child: Stack(
              children: const [
                OurTeamMemberWidget(
                  imagePath: "assets/pngs/john_doe.png",
                  name: "John Doe",
                  designation: "Co-founder & CTO",
                  colors: [
                    Color(0xFFE9A275),
                    Color(0xFFD295A1),
                  ],
                ),
                Align(
                  alignment: Alignment(0.8, -0.7),
                  child: OurTeamMemberWidget(
                    imagePath: "assets/pngs/matthew_james.png",
                    name: "Matthew James",
                    designation: "Co-founder & CTO",
                    colors: [
                      Color(0xFF75E9BF),
                      Color(0xFF95BDD2),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(-0.5, 1),
                  child: OurTeamMemberWidget(
                    imagePath: "assets/pngs/jane_doe.png",
                    name: "Jane Doe",
                    designation: "Co-founder & CTO",
                    colors: [
                      Color(0xFF8C89C8),
                      Color(0xFFD295C2),
                    ],
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
