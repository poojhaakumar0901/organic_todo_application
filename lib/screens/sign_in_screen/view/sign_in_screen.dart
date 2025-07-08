import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constant/strings.dart';
import '../../../utils/text_styles.dart';
import '../../../widgets/button.dart';
import '../controller/signin_controller.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SignInController>();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Placeholder(
                        fallbackHeight: 200,
                        color: Colors.white54,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppString.signInTitle,
                    style: AppTextStyles.hedlineLarge,
                  ),
                ),
                const SizedBox(height: 16),

                TextField(
                  controller: controller.emailController,
                  decoration: InputDecoration(
                    hintText: AppString.emailHintText,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                TextField(
                  controller: controller.passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: AppString.passwordHintText,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                ),

                const SizedBox(height: 24),
                CommonButton(
                  onPressed: controller.signIn,
                  label: AppString.signIn,
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(thickness: 1, color: Colors.black12),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        AppString.or,
                        style: AppTextStyles.bodyMedium,
                      ),
                    ),
                    const Expanded(
                      child: Divider(thickness: 1, color: Colors.black12),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          backgroundColor: const Color.fromARGB(
                            255,
                            227,
                            226,
                            226,
                          ),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 227, 226, 226),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          AppString.google,
                          style: AppTextStyles.bodyMedium,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          backgroundColor: const Color.fromARGB(
                            255,
                            227,
                            226,
                            226,
                          ),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 227, 226, 226),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          AppString.facebook,
                          style: AppTextStyles.bodyMedium,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                Center(
                  child: RichText(
                    text: TextSpan(
                      text: AppString.signUpPrompt,
                      style: AppTextStyles.bodyMedium,
                      children: [
                        TextSpan(
                          text: AppString.signUpAction,
                          style: AppTextStyles.bodyMedium.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
