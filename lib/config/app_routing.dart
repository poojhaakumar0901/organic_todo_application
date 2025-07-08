import 'package:get/get.dart';
import '../screens/on_boarding_screen/view/onboarding_screen.dart';
import '../screens/sign_in_screen/view/sign_in_screen.dart';
import 'app_bindings.dart';

class AppRoutes {
  static const onboarding = '/onboarding';
  static const signin = '/signin';

  static final pages = [
    GetPage(
      name: onboarding,
      page: () => const OnboardingScreen(),
    ),
    GetPage(
      name: signin,
      page: () => const SignInScreen(),
      binding: AppBindings(), 
    ),
  ];
}
