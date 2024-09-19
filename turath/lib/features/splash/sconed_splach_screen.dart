import 'dart:async';

import 'package:flutter/material.dart';
import 'package:turath/core/utils/app_colors.dart';
import 'package:turath/core/utils/app_text_style.dart';
import 'package:turath/features/on_boarding/onboarding_screen.dart';

class SconedSplachScreen extends StatefulWidget {
   SconedSplachScreen({super.key});

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
                builder: (context) =>  const OnboardingScreen(),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff1c1c1c),
        body: Center(
            child: Text(
          "تُراث",
          style: AppTextStyle.arabicTextW800S48.copyWith(fontSize: 100, color: AppColors.textColorPrimary)
        )
        ),
      ),
    );
  }
}
