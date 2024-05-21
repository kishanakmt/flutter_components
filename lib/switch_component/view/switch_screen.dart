import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

import '../../comman/assest_images.dart';
import '../../routes/app_routes.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool abc = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blueGrey,
        title: const Text(" Switch Screen",style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.offAllNamed(Routes.homeComponentScreen,
            );
          },
        ),),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Switch(
              activeColor: Colors.amber,
              activeTrackColor: Colors.cyan,
              inactiveThumbColor: Colors.blueGrey.shade600,
              inactiveTrackColor: Colors.grey.shade400,
              splashRadius: 50.0,
              value: abc,
              onChanged: (value) {
                setState(() {
                  abc = value;
                });
              },
            ),
            CupertinoSwitch(
              activeColor: Colors.pink.shade200,
              thumbColor: Colors.green.shade900,
              trackColor: Colors.black12,
              value: abc,
              onChanged: (value) {
                setState(() {
                  abc = value;
                });
              },
            ),
            Switch(
              trackColor: MaterialStateProperty.all(Colors.black38),
              activeColor: Colors.green.withOpacity(0.4),
              inactiveThumbColor: Colors.red.withOpacity(0.4),
              activeThumbImage: const AssetImage(
                AssetsImages.splashLogo,
              ),
              inactiveThumbImage:
                  const AssetImage(AssetsImages.splashBackground),
              value: abc,
              onChanged: (value) {
                setState(() {
                  abc = value;
                });
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            FlutterSwitch(
              value: abc,
              onToggle: (val) {
                setState(() {
                  abc = val;
                });
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlutterSwitch(
                  width: 100.0,
                  height: 55.0,
                  toggleSize: 45.0,
                  value: abc,
                  borderRadius: 30.0,
                  padding: 2.0,
                  activeToggleColor: const Color(0xFF0082C8),
                  inactiveToggleColor: const Color(0xFF01579B),
                  activeSwitchBorder: Border.all(
                    color: const Color(0xFF00D2B8),
                    width: 6.0,
                  ),
                  inactiveSwitchBorder: Border.all(
                    color: const Color(0xFF29B6F6),
                    width: 6.0,
                  ),
                  activeColor: const Color(0xFF55DDCA),
                  inactiveColor: const Color(0xFF54C5F8),
                  activeIcon: Image.network(
                    "https://buffer.com/library/content/images/2023/10/free-images.jpg",
                  ),
                  inactiveIcon: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/7/7e/Dart-logo.png",
                  ),
                  onToggle: (val) {
                    setState(() {
                      abc = val;
                    });
                  },
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Text("Value: $abc"),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            FlutterSwitch(
              height: 20.0,
              width: 40.0,
              padding: 4.0,
              toggleSize: 15.0,
              borderRadius: 10.0,
              activeColor: Colors.green,
              value: abc,
              onToggle: (value) {
                setState(() {
                  abc = value;
                });
              },
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlutterSwitch(
                  width: 125.0,
                  height: 55.0,
                  valueFontSize: 25.0,
                  toggleSize: 45.0,
                  value: abc,
                  borderRadius: 30.0,
                  padding: 8.0,
                  showOnOff: true,
                  onToggle: (val) {
                    setState(() {
                      abc = val;
                    });
                  },
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Value: $abc",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
