import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../comman/assest_images.dart';
import '../controller/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsImages.splashBackground),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child:

              //Text("Hello",style: TextStyle(fontSize: 30.w),),

              Image.asset(AssetsImages.splashLogo, width: 185.w),

        ),
      ),

    );
  }
}
