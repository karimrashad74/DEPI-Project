import 'package:flutter/material.dart';
import 'package:turath/core/routes/app_router.dart';

void main() => runApp(const TurathApp());

class TurathApp extends StatelessWidget {
  const TurathApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
