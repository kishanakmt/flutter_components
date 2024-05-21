import 'dart:developer';

import 'package:get/get.dart';

class BottomNavigationController extends GetxController{
  var tabIndex = 0.obs;
  var isBottomBarVisible = true.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  void changeTabIndex(int index) {
    tabIndex.value = index;

  }

  void toggleBottomBar() {
    isBottomBarVisible.value = !isBottomBarVisible.value;
  }
}