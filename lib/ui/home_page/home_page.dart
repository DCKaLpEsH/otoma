import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/logo_widget.dart';
import 'widgets/course_card_widget.dart';
import 'widgets/footer_widget.dart';
import 'widgets/our_team_widget.dart';
import 'widgets/testimonials_widget.dart';
import 'widgets/used_by_brands.dart';
import 'widgets/why_otoma_tags_widget.dart';
import 'widgets/why_otoma_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      const BoxConstraints(
        maxHeight: 1080,
        maxWidth: 1920,
      ),
      designSize: const Size(1920, 1080),
      context: context,
    );
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF263138),
              Color(0xFF29343F),
              Color(0xFF1A1C1F),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [
              0,
              0.5,
              1,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  "assets/pngs/polygon.png",
                  height: 1400.h,
                  width: 1400.w,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 56.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 140.w),
                      child: _headerWidget(),
                    ),
                    SizedBox(
                      height: 251.h,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 140.w),
                        child: SizedBox(
                          width: 653.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Find the best",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 105.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 95.h,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "with ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 85.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Otoma",
                                      style: TextStyle(
                                        color: const Color(0xFFFFB281),
                                        fontSize: 85.sp,
                                        fontWeight: FontWeight.bold,
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
                              ),
                              SizedBox(
                                height: 39.h,
                              ),
                              Text(
                                "More than 100 templates for website, landing page, Youtube banner, twitch and many other !",
                                style: TextStyle(
                                  color: const Color(0xFF8790A2),
                                  fontSize: 20.sp,
                                ),
                              ),
                              SizedBox(
                                height: 40.h,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 60.sp,
                                    width: 240.sp,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF8668F2),
                                      borderRadius: BorderRadius.circular(15),
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
                                  SizedBox(
                                    width: 24.w,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color(0xFF75E9BF)
                                            .withOpacity(0.3),
                                        width: 2.0,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 40.w,
                                      vertical: 18.h,
                                    ),
                                    alignment: Alignment.center,
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.play_arrow_outlined,
                                          color: Color(0xFF75E9BF),
                                        ),
                                        SizedBox(
                                          width: 14.w,
                                        ),
                                        Text(
                                          "Video Intro",
                                          style: TextStyle(
                                            color: const Color(0xFF75E9BF),
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 1.8,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 200.h,
                    ),
                    const WhyOtomaWidget(),
                    SizedBox(
                      height: 199.h,
                    ),
                    const WhyOtomaTagsWidget(),
                    SizedBox(
                      height: 137.h,
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Find the style that\n",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 85.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "suits you !",
                            style: TextStyle(
                              color: const Color(0xFFFFB281),
                              fontSize: 85.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 199.h,
                    ),
                    SizedBox(
                      child: ClipRRect(
                        child: Stack(
                          children: [
                            Align(
                              alignment: const Alignment(-0.26, -1),
                              child: Transform.rotate(
                                angle: pi / 3,
                                child: Image.asset(
                                  "assets/pngs/lock.png",
                                ),
                              ),
                            ),
                            Positioned(
                              left: 100,
                              top: 750,
                              child: Transform.rotate(
                                angle: pi / 4,
                                child: Image.asset(
                                  "assets/pngs/phone.png",
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
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: 60,
                                horizontal: 140.w,
                              ),
                              child: GridView(
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 17.w,
                                  mainAxisSpacing: 93.h,
                                  childAspectRatio: 1.2,
                                ),
                                children: const [
                                  CourseCardWidget(
                                    courseImagePath: "assets/pngs/course_1.png",
                                    category: "Twitch",
                                    categoryColor: Color(0xFFAC7EFF),
                                    filledButtonColor: Color(0xFF75E9BF),
                                    price: "Get Free",
                                  ),
                                  CourseCardWidget(
                                    categoryColor: Color(0xFF72E3A6),
                                    price: "Get for 99\$",
                                    filledButtonColor: Color(0xFFFFB281),
                                    courseImagePath: "assets/pngs/course_2.png",
                                    category: "Webdesign",
                                  ),
                                  CourseCardWidget(
                                    categoryColor: Color(0xFF8BABF0),
                                    price: "Get for 9\$",
                                    filledButtonColor: Color(0xFFFFB281),
                                    courseImagePath: "assets/pngs/course_3.png",
                                    category: "Facebook",
                                  ),
                                  CourseCardWidget(
                                    categoryColor: Color(0xFFE23834),
                                    price: "Get for 9\$",
                                    filledButtonColor: Color(0xFFFFB281),
                                    courseImagePath: "assets/pngs/course_1.png",
                                    category: "Facebook",
                                  ),
                                  CourseCardWidget(
                                    categoryColor: Color(0xFF72E3A6),
                                    price: "Get for 99\$",
                                    filledButtonColor: Color(0xFFFFB281),
                                    courseImagePath: "assets/pngs/course_2.png",
                                    category: "Webdesign",
                                  ),
                                  CourseCardWidget(
                                    categoryColor: Color(0xFF8BABF0),
                                    price: "Get for 9\$",
                                    filledButtonColor: Color(0xFFFFB281),
                                    courseImagePath: "assets/pngs/course_3.png",
                                    category: "Facebook",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const OurTeamWidget(),
                    SizedBox(
                      height: 175.h,
                    ),
                    const TestimonialsWidget(),
                    SizedBox(
                      height: 52.h,
                    ),
                    const UsedByBrandsWidget(),
                    SizedBox(
                      height: 160.h,
                    ),
                    const FooterWidget(),
                    SizedBox(
                      height: 38.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Terms and Privacy Policy",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                          ),
                        ),
                        Text(
                          "Copyright © 2021 Otoma",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                          ),
                        ),
                        Text(
                          "Site Map - I find a bug ? ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _headerWidget() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const LogoWidget(),
        const Spacer(),
        Expanded(
          flex: 2,
          child: TabBar(
            indicatorColor: Colors.transparent,
            controller: _tabController,
            labelStyle: TextStyle(
              // color: Colors.white,
              fontSize: 17.sp,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: TextStyle(
              // color: const Color(0xFF8790A2),
              fontSize: 17.sp,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelColor: const Color(0xFF8790A2),
            labelColor: Colors.white,
            indicatorPadding: EdgeInsets.symmetric(
              horizontal: 40.w,
            ),
            tabs: [
              Text(
                "Overview",
                style: TextStyle(
                  // color: Colors.white,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Product",
                style: TextStyle(
                  // color: Colors.white,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Contact",
                style: TextStyle(
                  // color: Colors.white,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        Text(
          "Log In",
          style: TextStyle(
            color: const Color(0xFF8790A2),
            fontSize: 17.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 55.w,
        ),
        const Icon(
          Icons.shopping_cart_outlined,
          color: Color(0xFF8790A2),
        ),
        SizedBox(
          width: 55.w,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFF75E9BF).withOpacity(0.3),
              width: 2.0,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(35),
            ),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 40.w,
            vertical: 18.h,
          ),
          alignment: Alignment.center,
          child: const Text(
            "Sign Up",
            style: TextStyle(
              color: Color(0xFF75E9BF),
            ),
          ),
        )
      ],
    );
  }
}
