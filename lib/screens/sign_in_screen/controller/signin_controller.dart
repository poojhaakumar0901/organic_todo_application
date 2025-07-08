import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../database/db_helper.dart';


class SignInController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final dbHelper = DBHelper();

  void signIn() async {
    String email = emailController.text.trim();
    String password = passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      Get.snackbar("Error", "Please enter email and password");
      return;
    }

    final user = await dbHelper.getUser(email, password);

    if (user != null) {
      Get.snackbar("Success", "Signed in as ${user.email}");
      // Navigate to home screen or dashboard
    } else {
      Get.snackbar("Failed", "Account not found or wrong credentials");
    }
  }
}
