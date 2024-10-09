import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});


@override
Widget build(BuildContext context) {
  return const Scaffold(
    backgroundColor: Color(0xFF121212),
    body: SafeArea(
      child: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
      children: [
        // Image.asset(""),
         Text(
          "Up ToDo",
          style: TextStyle(
        fontSize: 40,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      ),
      ],
    ),
      ),
    ),
  );
}
}