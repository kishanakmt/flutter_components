import 'package:component/bottomNavigation_component/controller/bottomNavigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Screen",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueGrey,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.offAllNamed(Routes.homeComponentScreen,
            );
          },
        ),),

      body: SafeArea(
        child: Obx(() => Center(
              child: IndexedStack(
                index: bottomNavigationController.tabIndex.value,
                children: const [
                  Text("Home",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                  Text("Add",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                  Text("Calender",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                  Text("Business",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                ],
              ),
            )),
      ),
      bottomNavigationBar:
          buildBottomNavigationMenu(context, bottomNavigationController),
    );
  }

  buildBottomNavigationMenu(BuildContext context,
      BottomNavigationController bottomNavigationController) {
    return Obx(() => SizedBox(
            child: BottomNavigationBar(
          showUnselectedLabels: false,
          onTap: bottomNavigationController.changeTabIndex,
          currentIndex: bottomNavigationController.tabIndex.value,
          backgroundColor: const Color.fromRGBO(36, 54, 101, 1.0),
          unselectedItemColor: Colors.white.withOpacity(0.5),
          selectedItemColor: Colors.white,
          unselectedLabelStyle: unselectedLabelStyle,
          selectedLabelStyle: selectedLabelStyle,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  height: 20.h,
                  width: 20.w,
                  child: const Icon(Icons.home)),
              label: 'Home',
              backgroundColor: Colors.blueGrey,
            ),
            BottomNavigationBarItem(
              icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  height: 20.h,
                  width: 20.w,
                  child: const Icon(Icons.add)),
              label: 'Add ',

              backgroundColor: Colors.blueGrey,
            ),
            BottomNavigationBarItem(
              icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  height: 20.h,
                  width: 20.w,
                  child: const Icon(Icons.calendar_month)),
              label: 'Calendar',
              backgroundColor: Colors.blueGrey,
            ),
            BottomNavigationBarItem(
              icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  height: 20.h,

                  width: 20.w,
                  child: const Icon(Icons.business)),
              label: 'Business',
              backgroundColor: Colors.blueGrey,
            ),
          ],
        )));
  }

  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);
}
