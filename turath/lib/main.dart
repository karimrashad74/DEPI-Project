import 'package:flutter/material.dart';
import 'package:turath/core/database/cache/cache_helper.dart';
import 'package:turath/core/routes/app_router.dart';
import 'package:turath/core/utils/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper().init();
  runApp(const TurathApp());
}

class TurathApp extends StatelessWidget {
  const TurathApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.bgColor),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
