import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home_page.dart';
import 'testimonial_card_widget.dart';

class TestimonialsWidget extends StatelessWidget {
  const TestimonialsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 970.h,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 130.w,
        ),
        child: ClipRRect(
          child: Stack(
            children: [
              Align(
                alignment: const Alignment(-0.8, 0.95),
                child: Transform.rotate(
                  angle: -pi / 5,
                  child: Image.asset(
                    "assets/pngs/notebook.png",
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 3,
                  sigmaY: 3,
                ),
                child: Container(),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 731.h,
                  decoration: BoxDecoration(
                    color: Color(0xFF242834),
                    borderRadius: BorderRadius.circular(97),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 116.w,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 2,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "\n\n\n",
                              ),
                              TextSpan(
                                text: "100 000  ",
                                style: TextStyle(
                                  color: const Color(0xFFFFB281),
                                  fontSize: 78.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: "downloads around the world",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 78.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: "\nWe will take care of everything else.",
                                style: TextStyle(
                                  color: const Color(0xFF8790A2),
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const TextSpan(
                                text: "\n",
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: Image.asset(
                          "assets/pngs/downloads.png",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 80.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      TestimonialCardWidget(
                        testimony:
                            "Et quoniam mirari posse quosdam sonare peregrinos existimo",
                        name: "Mark Grabbs",
                        imagePath: "assets/pngs/grabbs.png",
                        colors: [
                          Color(0xFF75E9BF),
                          Color(0xFF95BDD2),
                        ],
                      ),
                      TestimonialCardWidget(
                        testimony:
                            "Et quoniam mirari posse quosdam sonare peregrinos existimo",
                        imagePath: "assets/pngs/olsen.png",
                        name: "Jannith Olsen",
                        colors: [
                          Color(0xFFE9A275),
                          Color(0xFFD295A1),
                        ],
                      ),
                      TestimonialCardWidget(
                        testimony:
                            "Et quoniam mirari posse quosdam sonare peregrinos existimo",
                        imagePath: "assets/pngs/armando.png",
                        name: "Jose Armando",
                        colors: [
                          Color(0xFF75E5E9),
                          Color(0xFF9595D2),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
