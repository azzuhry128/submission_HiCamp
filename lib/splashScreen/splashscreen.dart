import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topRight, end: Alignment.bottomRight, colors: [
            Color(0xFFFF800B),
            Color(0xFFCE1010)
          ]),
        ),
        child: Column(
          children: [
            Text("hello world")
          ],
        ),
      ),
    );
  }
}