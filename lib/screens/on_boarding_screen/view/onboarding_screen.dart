import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constant/strings.dart';
import '../../../utils/text_styles.dart';
import '../../../widgets/button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(16),
                child: const Placeholder(
                  fallbackHeight: 280,
                  color: Colors.white54,
                ),
              ),

              const SizedBox(height: 28),

              Text(
                AppString.onBoardingHeading,
                style: AppTextStyles.hedlineLarge,
              ),

              const SizedBox(height: 12),

              Text(
                AppString.onBoardingContent,
                style: AppTextStyles.bodyMedium,
              ),

              const Spacer(),

              CommonButton(
                onPressed: () {
                  Get.toNamed('/signin');
                },
                label: AppString.getStarted,
              ),

              const SizedBox(height: 12),

              Center(
                child: RichText(
                  text: TextSpan(
                    text: AppString.getStartedDialog,
                    style: AppTextStyles.bodyMedium,
                    children: [
                      TextSpan(
                        text: AppString.signIn,
                        style: AppTextStyles.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
