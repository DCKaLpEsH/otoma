import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/logo_widget.dart';

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

class WhyTagsDivider extends StatelessWidget {
  const WhyTagsDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 50.w),
      height: double.infinity,
      width: 2.0,
      color: const Color(0xFF4F486A),
    );
  }
}

class WhyTagsWidget extends StatelessWidget {
  const WhyTagsWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.outlineColor,
  }) : super(key: key);
  final String title;
  final String subtitle;
  final String icon;
  final Color outlineColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 313.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(17.5),
            decoration: BoxDecoration(
              border: Border.all(
                color: outlineColor,
                width: 1.5,
              ),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              "assets/svgs/$icon.svg",
            ),
            alignment: Alignment.center,
          ),
          SizedBox(
            width: 41.w,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.sp,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: const Color(0xFF8790A2),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
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
