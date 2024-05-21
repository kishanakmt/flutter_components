import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class RadioButtonComponent extends StatefulWidget {
  const RadioButtonComponent({super.key});

  @override
  State<RadioButtonComponent> createState() => _RadioButtonComponentState();
}

class _RadioButtonComponentState extends State<RadioButtonComponent> {
  int selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RadioButton Screen",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueGrey,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.offAllNamed(Routes.homeComponentScreen,
            );
          },
        ),),
      body: SafeArea(
        child: Center(
          child: Column(
          //  mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              simpleRadioButtonWidget(),
              const SizedBox(
                height: 10,
              ),
              squerCustomRadioButtonWidget(),
              const SizedBox(
                height: 10,
              ),
              listViewRadioButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }

  simpleRadioButtonWidget() {
    return SizedBox(
      height: 30,
      child: Row(
        children: [
          Radio(
            value: 1,
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
          ),
          const Text('Male'),
          Radio(
            value: 2,
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
          ),
          const Text('Female'),
        ],
      ),
    );
  }

  Widget customRadio({required int value, required String label}) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 24.0,
            // Adjust the width and height as needed
            height: 24.0,
            margin: const EdgeInsets.only(right: 8.0),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(
                width: 2.0,
                color: selectedValue == value
                    ? Colors.grey // Color when selected
                    : Colors.grey, // Color when not selected
              ),
            ),
            child: Theme(
              data: ThemeData(unselectedWidgetColor: Colors.transparent),
              child: Radio(
                value: value,

                focusColor: Colors.grey,
                //  hoverColor: Colors.grey,
                activeColor: Colors.grey,
                groupValue: selectedValue,
                onChanged: (val) {
                  setState(() {
                    selectedValue = val!;
                  });
                },
              ),
            ),
          ),
        ),
        Text(label),
      ],
    );
  }

  squerCustomRadioButtonWidget() {
    return Container(
      height: 50,
      child: Row(
          children: [
        customRadio(value: 1, label: 'Male'),
        const SizedBox(
          width: 10,
        ),
        customRadio(value: 2, label: 'Female'),
        const SizedBox(
          width: 10,
        ),
        customRadio(value: 3, label: 'Other'),
      ]),
    );
  }

  listViewRadioButtonWidget() {
    return Container(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 2, // Number of items in your list
        itemBuilder: (BuildContext context, int index) {
          return Row(

            children: [
              Radio(
                value: index,
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value!;
                  });
                },
              ),
              index % 2 == 0 ? const Text("Female") : const Text("Male")
            ],
          );
        },
      ),
    );
  }
}
