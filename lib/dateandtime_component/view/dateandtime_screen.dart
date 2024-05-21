import 'package:component/dateandtime_component/controller/dateandtime_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../routes/app_routes.dart';

class DateAndTimeScreen extends StatefulWidget {
  const DateAndTimeScreen({super.key});

  @override
  State<DateAndTimeScreen> createState() => _DateAndTimeScreenState();
}

class _DateAndTimeScreenState extends State<DateAndTimeScreen> {
  DateAndTimeController dateAndTimeController =
      Get.put(DateAndTimeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blueGrey,
        title: const Text(" Date & Time Picker Screen",style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.offAllNamed(Routes.homeComponentScreen,
            );
          },
        ),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50.h,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () async {
                  DateTime? startPickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2100)
                  );
                  if (startPickedDate != null) {
                    String formattedDate = DateFormat('dd-MM-yyyy').format(startPickedDate);
                    String month = DateFormat('MM').format(startPickedDate);
                    String monthChar = DateFormat('MMMM').format(startPickedDate);

                    setState(() {
                      dateAndTimeController.startDate.text = formattedDate;
                      dateAndTimeController.month = int.parse(month.toString());
                      dateAndTimeController.monthChar = monthChar.toString();
                    });
                  }
                },
                child: const Text("Date Picker")),
          ),

          Center(
            child: ElevatedButton(
                onPressed: () async {
                  final TimeOfDay? picked = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (picked != null) {
                    setState(() {
                      dateAndTimeController.time.text = "${picked.hour}:${picked.minute}";
                    });
                  }
                },
                child: const Text("Time Picker")),
          ),

          TextFormField(
            controller: dateAndTimeController.startDate,
            readOnly: true,
            validator: (startDate) {
              if (startDate == null || startDate.isEmpty) {
                return "Please Input Start Date";
              } else {
                return null;
              }
            },
          ),

          TextFormField(
            controller: dateAndTimeController.time,
            readOnly: true,
            validator: (startDate) {
              if (startDate == null || startDate.isEmpty) {
                return "Please Input Start Date";
              } else {
                return null;
              }
            },
          ),
        ],
      ),
    );
  }
}
