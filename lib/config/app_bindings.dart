import 'package:get/get.dart';
import '../screens/sign_in_screen/controller/signin_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
  }
}
