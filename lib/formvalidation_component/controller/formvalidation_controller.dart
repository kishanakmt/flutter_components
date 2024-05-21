import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormValidationController extends GetxController {

  TextEditingController firstNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool showPassword = true;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    firstNameController = TextEditingController();
    phoneNumberController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  inquiryUpValidationMethod() {
    // FocusScope.of(context).unfocus();
    if (firstNameController.text.trim().isEmpty) {
      Get.snackbar("Error", "Please Enter Name");
    } else if (phoneNumberController.text.trim().isEmpty) {
      Get.snackbar("Error", "Please Enter Mobile Number");
    } else if (phoneNumberController.text.length != 10) {
      Get.snackbar("Error", "Please Enter Valid  Mobile Number");
    } else if (emailController.text.trim().isEmpty) {
      Get.snackbar("Error", "Please Enter Email");
    } else if (!RegExp(
            r"^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$")
        .hasMatch(emailController.text.trim().toString())) {
      Get.snackbar("Error", "Please Enter Valid  Email");
    } else if (passwordController.text.trim().isEmpty) {
      Get.snackbar("Error", "Please Enter Password");
    } else if (!RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(passwordController.text.trim().toString())) {
      Get.snackbar("Error", "Please Enter Valid  Password");
    } else {
      Get.snackbar("Success", "Congratulation!");
      //inquiryFormController.inquiryApiCall();
    }
  }
}
