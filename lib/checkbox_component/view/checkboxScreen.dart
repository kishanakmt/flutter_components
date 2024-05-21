import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class CheckBoxScreen extends StatefulWidget {
  const CheckBoxScreen({super.key});

  @override
  State<CheckBoxScreen> createState() => _CheckBoxScreenState();
}

class _CheckBoxScreenState extends State<CheckBoxScreen> {
  bool valuefirst = false;
  bool valuesecond = false;

  List<String> _checked = []; //["A", "B"];
  String _picked = "Two";

  Map<String, bool> values = {
    'google.com': true,
    'youtube.com': false,
    'yahoo.com': false,
    'gmail.com': false,
  };

  var tmpArray = [];

  getCheckboxItems() {
    values.forEach((key, value) {
      if (value == true) {
        tmpArray.add(key);
      }
    });

    print(tmpArray);
    tmpArray.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CheckBox Screen",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueGrey,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.offAllNamed(Routes.homeComponentScreen,
            );
          },
        ),),
      body: Padding(
        padding: EdgeInsets.only(right: 30.w, left: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Games:- ',
                  style: TextStyle(fontSize: 17.0),
                ),
                SizedBox(
                  width: 10.w,
                ),
                const Text(
                  'Cricket',
                  style: TextStyle(fontSize: 17.0),
                ),
                Checkbox(
                  checkColor: Colors.greenAccent,
                  activeColor: Colors.red,
                  value: valuefirst,
                  onChanged: (bool? value) {
                    setState(() {
                      valuefirst = value!;
                    });
                  },
                ),
                const Text(
                  'Chess',
                  style: TextStyle(fontSize: 17.0),
                ),
                Checkbox(
                  checkColor: Colors.black,
                  activeColor: Colors.blueGrey,
                  value: this.valuesecond,
                  onChanged: (bool? value) {
                    setState(() {
                      this.valuesecond = value!;
                    });
                  },
                ),
              ],
            ),
            //
            ListView(
              shrinkWrap: true,
              children: values.keys.map((String key) {
                return CheckboxListTile(
                  title: Text(key),
                  value: values[key],
                  onChanged: (value) {
                    setState(() {
                      values[key] = value!;
                    });
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
