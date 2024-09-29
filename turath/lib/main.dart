import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:turath/core/database/cache/cache_helper.dart';
import 'package:turath/core/routes/app_router.dart';
import 'package:turath/core/services/service_locator.dart';
import 'package:turath/core/utils/app_colors.dart';
import 'package:turath/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupServiceLocator();
  await getIt<CacheHelper>().init();
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
