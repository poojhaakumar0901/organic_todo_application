import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'config/theme.dart';
import 'config/app_routing.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Organic Mind',
      initialRoute: AppRoutes.onboarding,
      getPages: AppRoutes.pages,
      theme: AppTheme.lightTheme,
    );
  }
}
