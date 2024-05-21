import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateAndTimeController extends GetxController {

  TextEditingController startDateController = TextEditingController();

  late TextEditingController startDate;
  late TextEditingController endDate;
  late TextEditingController time;

  int month = 0;
  var monthChar = '';
  DateTime dateTime = DateTime.now();

  @override
  void onInit() {
    super.onInit();
    startDateController=TextEditingController();
    startDate=TextEditingController();
    endDate=TextEditingController();
    time=TextEditingController();

  }
}