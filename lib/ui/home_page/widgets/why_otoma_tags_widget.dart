import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'why_tag_widget.dart';
import 'why_tags_divider_widget.dart';

class WhyOtomaTagsWidget extends StatelessWidget {
  const WhyOtomaTagsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 140.w),
      child: SizedBox(
        height: 131.h,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            WhyTagsWidget(
              icon: "calendar",
              title: "Best qualities",
              subtitle:
                  "Et quoniam mirari posse quosdam peregrinos existimo haec lecturos.",
              outlineColor: Color(0xFF4F486A),
            ),
            WhyTagsDivider(),
            WhyTagsWidget(
              title: "+100 templates",
              subtitle:
                  "Et quoniam mirari posse quosdam peregrinos existimo haec lecturos.",
              icon: "clock",
              outlineColor: Color(0xFF486A67),
            ),
            WhyTagsDivider(),
            WhyTagsWidget(
              title: "For all social media",
              subtitle:
                  "Et quoniam mirari posse quosdam peregrinos existimo haec lecturos.",
              icon: "clock_red",
              outlineColor: Color(0xFF6A4848),
            ),
            WhyTagsDivider(),
            WhyTagsWidget(
              title: "Lorem Ipsum",
              subtitle:
                  "Et quoniam mirari posse quosdam peregrinos existimo haec lecturos.",
              icon: "clock_blue",
              outlineColor: Color(0xFF485A6A),
            ),
          ],
        ),
      ),
    );
  }
}
