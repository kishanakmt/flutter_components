import 'package:component/formvalidation_component/controller/formvalidation_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';
import '../common/text_input_field.dart';

class FromValidationControllerScreen extends StatefulWidget {
  const FromValidationControllerScreen({super.key});

  @override
  State<FromValidationControllerScreen> createState() =>
      _FromValidationControllerScreenState();
}

class _FromValidationControllerScreenState
    extends State<FromValidationControllerScreen> {
  FormValidationController formValidationController =
      Get.put(FormValidationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blueGrey,
        title: const Text(" Form Validation Screen",style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.offAllNamed(Routes.homeComponentScreen,
            );

          },
        ),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                firstNameTextField(),
                phoneNumberTextField(),
                emailTextField(),
                passwordTextField(),
                _submitButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  firstNameTextField() {
    return TextInputField(
      controller: formValidationController.firstNameController,
      hintText: "Enter Name",
      showSuffixIcn: false,
      onChanged: (value) {},
      onValidate: (value) {},
      keyType: TextInputType.text,
    );
  }

  phoneNumberTextField() {
    return TextInputField(
      controller: formValidationController.phoneNumberController,
      hintText: "Enter Phone Number",
      keyType: TextInputType.number,
      showSuffixIcn: false,
      textInputFormatter: [LengthLimitingTextInputFormatter(10)],
      onChanged: (value) {},
      onValidate: (value) {},
    );
  }

  emailTextField() {
    return TextInputField(
      controller: formValidationController.emailController,
      hintText: "Enter Email Address ",
      showSuffixIcn: false,
      onChanged: (value) {},
      onValidate: (value) {},
      keyType: TextInputType.emailAddress,
    );
  }

  passwordTextField() {
    return TextInputField(
      controller: formValidationController.passwordController,
      hintText: "Enter Password",
      showSuffixIcn: true,
      textInputAction: TextInputAction.next,
      obscureText: formValidationController.showPassword,
      icons: formValidationController.showPassword
          ? Icon(Icons.visibility)
          : Icon(Icons.visibility_off),
      ontapSuffix: () {
        setState(() {
          formValidationController.showPassword =
              !formValidationController.showPassword;
        });
      },
      onChanged: (value) {},
      onValidate: (value) {},
      keyType: TextInputType.text,
    );
  }

  _submitButton() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        onPressed: () {
          formValidationController.inquiryUpValidationMethod();
        },
        child: Text("Submit"),
      ),
    );
  }
}
