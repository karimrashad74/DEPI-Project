import 'dart:async';
import 'package:flutter/material.dart';
import 'package:turath/features/on_boarding/onboarding_screen.dart';

class SconedSplachScreen extends StatefulWidget {
  const SconedSplachScreen({super.key});

  @override
  State<SconedSplachScreen> createState() => _SconedSplachScreenState();
}

class _SconedSplachScreenState extends State<SconedSplachScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const OnboardingScreen(),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff1c1c1c),
        body: Center(
            child: Text(
          "تُراث",
          style: TextStyle(
              fontSize: 100,
              fontWeight: FontWeight.w800,
              fontFamily: 'Fustat',
              color: Color(0xffEDE4DD)),
        )),
      ),
    );
  }
}
