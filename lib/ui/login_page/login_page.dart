import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
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
      ),
    );
  }
}
