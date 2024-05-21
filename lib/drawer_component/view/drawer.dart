import 'package:component/comman/assest_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../routes/app_routes.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Navigation Drawer',
        ),
        backgroundColor: const Color(0xff764abc),
      ),

      drawer: Drawer(
        width: 278.w,
        child: drawerWidget(),
      ),
    );
  }

  Widget drawerWidget() {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    Get.offAllNamed(Routes.homeComponentScreen,
                    );
                  },
                ),
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  color: Colors.blueGrey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.arrow_back,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Stack(
                            children: [
                              CircleAvatar(
                                radius: (40.r),
                                backgroundColor: Colors.white,
                                backgroundImage: const AssetImage(
                                    AssetsImages.splashBackground),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                      height:  30.h
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "First",
                        style: GoogleFonts.labrada(
                            fontSize: 20.r, fontWeight: FontWeight.w400),
                      ),
                      Row(
                        children: [
                          Text(
                            "Add",
                            style: GoogleFonts.labrada(
                                fontSize: 20.r, fontWeight: FontWeight.w400),
                          ),
                          const Spacer(),
                          const Icon(Icons.add),
                        ],
                      ),
                      Row(
                        children: [

                          const Icon(Icons.people),
                          SizedBox(width: 8.w,),
                          Text(
                            "User",
                            style: GoogleFonts.labrada(
                                fontSize: 20.r, fontWeight: FontWeight.w400),
                          ),

                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
