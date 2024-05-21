import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TextFeild Screen",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blueGrey,

          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Get.offAllNamed(Routes.homeComponentScreen,
              );
            },
          ),),
        body: SafeArea(
            child: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextField(
                  decoration: InputDecoration(
                labelText: "Username",
                //babel text
                hintText: "Enter your email",
                //hint text
                prefixIcon: Icon(Icons.people),
                //prefix iocn
                hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                //hint text style
                labelStyle:
                    TextStyle(fontSize: 13, color: Colors.grey), //label style
              )),
              SizedBox(
                height: 10.h,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Please search here ',
                ),
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.black,
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.email_outlined),
                        color: Colors.grey,
                      ),
                      hintText: 'Correo Electrónico',
                      hintStyle: const TextStyle(color: Colors.grey),
                    ),
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                  child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Full Name',
                ),
                onChanged: (text) {
                  setState(() {});
                },
              )),
            ]),
      ),
    )));
  }
}
