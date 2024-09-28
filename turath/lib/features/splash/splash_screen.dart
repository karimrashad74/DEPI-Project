import 'dart:async';
import 'package:flutter/material.dart';
import 'package:turath/core/functions/navigation.dart';
import 'package:turath/core/utils/app_assets.dart';
import 'package:turath/core/utils/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        customNavigate(context, '/SconedSplachScreen');
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: AppColors.bgColor,
          body: Center(
            child: Image.asset(Assets.imagesLogo,
                color: AppColors.textColorPrimary,
                width: 350,
                height: double.infinity),
          ),
        ));
  }
}
