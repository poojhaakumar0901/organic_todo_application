import "package:flutter/material.dart";
import "package:get/get.dart";

import "config/theme.dart";
import "screens/onboarding_screen.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(final BuildContext context) => GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Organic Mind",
    theme: AppTheme.lightTheme,
    initialRoute: "/onboarding",
    getPages: <GetPage<dynamic>>[
      GetPage<OnboardingScreen>(
        name: "/onboarding",
        page: () => const OnboardingScreen(),
      ),
    ],
  );
}
