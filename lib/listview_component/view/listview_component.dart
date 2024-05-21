import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class ListviewComponent extends StatefulWidget {
  const ListviewComponent({super.key});

  @override
  State<ListviewComponent> createState() => _ListviewComponentState();
}

class _ListviewComponentState extends State<ListviewComponent> {

  List listsData = [
    ' Dart',
    ' Android',
    ' IOS',
    ' Dart',
    ' Android',
    ' IOS',
    ' Dart',
    ' Android',
    ' IOS',
    ' Flutter',
    ' Dart',
    ' Android',
    ' IOS',
    ' Flutter',
    ' Dart',
    ' Android',
    ' IOS'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Builder Screen",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueGrey,

        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.offAllNamed(Routes.homeComponentScreen,
            );
          },
        ),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                  itemCount: listsData.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Padding(

                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            listsData[index].toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    );

                    // return ListTile(
                    //   title: Text(listsData[index].toString(
                    //
                    //   )
                    //   ),
                    // );
                  }),

            ],
          ),
        ),
      ),
    );
  }
}
