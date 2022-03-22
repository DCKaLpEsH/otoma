import 'package:flutter/material.dart';
import 'package:otoma/ui/home_page/home_page.dart';

class OtomaApp extends StatelessWidget {
  const OtomaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(
        // textTheme: GoogleFonts.poppinsTextTheme(),
        scaffoldBackgroundColor: const Color(0xFF4F486A),
      ),
    );
  }
}
