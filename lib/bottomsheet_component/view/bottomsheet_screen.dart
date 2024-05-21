import 'package:component/comman/assest_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class BottomSheetScreen extends StatefulWidget {
  const BottomSheetScreen({super.key});

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        backgroundColor: Colors.blueGrey,
            title: const Text("Bottom Shreet Screen",style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.offAllNamed(Routes.homeComponentScreen,
            );
          },
        ),),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showData(context);
            },
            child: const Text("Show Bottom Sheet")),
      ),
    );
  }

  void showData(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.black12,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(left: 20.w, right: 10.w, bottom: 50.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Card(
                    color: Colors.teal,
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          "Hello",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                  const Row(
                    children: [
                      Text(
                        "First",
                        style: TextStyle(color: Colors.white),
                      ),
                      Spacer(),
                      Icon(Icons.add)
                    ],
                  ),
                  const Card(
                    color: Colors.grey,
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          "Test",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.yellowAccent,
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)
                                    )
                            ),
                            child: const Center(
                                child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("First"),
                            ))),
                      )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.yellowAccent,
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)
                                    )),
                            child: const Center(
                                child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Second"),
                            ))),
                      )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.yellowAccent,
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10))),
                            child: const Center(
                                child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Third"),
                            ))),
                      )),
                    ],
                  ),
                  Center(
                      child: Image.asset(
                    AssetsImages.splashLogo,
                    height: 35.h,
                  )),
                  SizedBox(
                    height: 30.h,
                  ),
                  Center(
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Close")),
                  ),

                ],
              ),
            ),
          );
        });
  }
}
