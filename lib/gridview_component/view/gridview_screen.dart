import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../comman/assest_images.dart';
import '../../routes/app_routes.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blueGrey,
        title: const Text("Gridview Screen",style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.offAllNamed(Routes.homeComponentScreen,
            );
          },
        ),),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 1,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.9,
                  ),
                  padding: EdgeInsets.zero,
                  itemCount: 6,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(


                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height:50.h,
                              child: Image.asset(
                                AssetsImages.splashLogo,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Text("Name"),
                            const Text("Name"),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Expanded(
              flex: 1,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2.0,
                    mainAxisSpacing: 2.0

                  ),
                  padding: EdgeInsets.zero,
                  // set padding to zero
                  itemCount: 10,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [


                          SizedBox(
                            height:100.h,
                            child: Image.asset(
                                    AssetsImages.splashLogo,
                                    fit: BoxFit.cover,),
                          ),


                            const Row(
                              children: [
                                Text("Name"),
                                Spacer(),
                                Icon(
                                  Icons.person,
                                  size: 15,
                                ),
                              ],
                            ),
                            Text("Name"),
                          ],
                        ),
                      ),
                    );
                  }),

            ),
          ],
        ),
      ),
    );
  }
}
