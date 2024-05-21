import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class DropDownScreen extends StatefulWidget {
  const DropDownScreen({super.key});

  @override
  State<DropDownScreen> createState() => _DropDownScreenState();
}

class _DropDownScreenState extends State<DropDownScreen> {

  String dropdownvalue = 'Item 1';
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  String dropdownvalues = 'Apple';
  var itemss = [
    'Apple',
    'Android',
    'ReactNative',
    'Swift',
    'Dart',
    'Kotlin'
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("DropDown Button Screen",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueGrey,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.offAllNamed(Routes.homeComponentScreen,
            );
          },
        ),),
      body: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          Center(
            child: DropdownButton(
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
              height: 40,
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.grey, style: BorderStyle.solid, width: 0.80),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton2(
                  hint: Text(
                    'Select Item',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                  items: itemss
                      .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
                      .toList(),
                  value: dropdownvalues,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalues = newValue!;
                    });
                  },
               /*   buttonHeight: 40,
                  buttonWidth: 140,
                  itemHeight: 40,*/
                ),
              )),
          SizedBox(
            height: 30.h,
          ),
          Container(
              height: 40,

              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(color: Colors.blue, style: BorderStyle.solid, width: 0.80),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton2(
                  hint: Text(
                    'Select Item',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                  items: itemss
                      .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
                      .toList(),
                  value: dropdownvalues,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalues = newValue!;
                    });
                  },
                  /*   buttonHeight: 40,
                  buttonWidth: 140,
                  itemHeight: 40,*/
                ),
              )),

        ],
      ),
    );
  }
}
