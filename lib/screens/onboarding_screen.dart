import "package:flutter/material.dart";
import "../constant/strings.dart";
import "../utils/theme/text_styles.dart";
import "../widgets/button.dart";

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(final BuildContext context) => Scaffold(
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
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

            const Text(
              AppString.onBoardingHeading,
              style: AppTextStyles.hedlineLarge,
            ),

            const SizedBox(height: 12),

            const Text(
              AppString.onBoardingContent,
              style: AppTextStyles.bodyMedium,
            ),

            const Spacer(),

            CommonButton(onPressed: () {}, label: AppString.getStarted),

            const SizedBox(height: 12),

            Center(
              child: RichText(
                text: const TextSpan(
                  text: AppString.getStartedDialog,
                  style: AppTextStyles.bodyMedium,
                  children: <InlineSpan>[
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
