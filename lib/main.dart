import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/onboarding_screen.dart';


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
      initialRoute: '/onboarding',
      getPages: [
        GetPage(name: '/onboarding', page: () => const OnboardingScreen()),
      ],
      theme: ThemeData.light(),
    );
  }
}
