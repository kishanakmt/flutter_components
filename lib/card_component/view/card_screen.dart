import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../comman/assest_images.dart';
import '../../routes/app_routes.dart';


class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blueGrey,
        title: const Text(" Cardview Screen",style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.offAllNamed(Routes.homeComponentScreen,
            );
          },

        ),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
              width: 20,
            ),
            fullScreenCard(context),
            smallSizeScreenCard(context),
            horizontalScreenCard(context),
          ],
        ),
      ),
    );
  }

  fullScreenCard(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 150.h,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: const EdgeInsets.all(10),
        child: Image.asset(
          AssetsImages.splashBackground,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  smallSizeScreenCard(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: const EdgeInsets.all(10),
            child: Image.asset(
              AssetsImages.splashBackground,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Expanded(
          child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                Image.asset(
                  AssetsImages.splashBackground,
                  fit: BoxFit.fill,
                ),
                const Text("First"),
                const Text("Second"),
                const Text("Third"),
              ],
            ),
          ),
        ),
      ],
    );
  }

  horizontalScreenCard(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      margin: const EdgeInsets.all(10),
      child: SizedBox(
        height: 50.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                AssetsImages.splashBackground,
                fit: BoxFit.fill,
              ),
            ),
            const Expanded(flex: 3, child: Center(child: Text("hello"))),
            const Expanded(flex: 1, child: Icon(Icons.people)),
          ],
        ),
      ),
    );
  }
}
