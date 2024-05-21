import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class PullToRefreshScreen extends StatefulWidget {
  const PullToRefreshScreen({super.key});

  @override
  State<PullToRefreshScreen> createState() => _PullToRefreshScreenState();
}

class _PullToRefreshScreenState extends State<PullToRefreshScreen> {
  late GlobalKey<ScaffoldState> scaffoldKey;

  late List<String> demoData;

  @override
  void initState() {
    demoData = [
      "Flutter",
      "React Native",
      "Cordova/ PhoneGap",
      "Native Script"
    ];
    scaffoldKey = GlobalKey();
    super.initState();

  }

  @override
  void dispose() {
    scaffoldKey?.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
        title: const Text("Pull to refersh",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueGrey,

        leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () {
        Get.offAllNamed(Routes.homeComponentScreen,
        );
        },
        ),),
        body: RefreshIndicator(
          child: ListView.builder(
            itemBuilder: (ctx, idx) {
              return Card(
                child: ListTile(
                  title: Text(demoData[idx]),
                ),
              );
            },
            itemCount: demoData.length,
            physics: const AlwaysScrollableScrollPhysics(),
          ),
          onRefresh: () {
            return Future.delayed(
              const Duration(seconds: 1),
              () {
                setState(() {
                  demoData.addAll(["Ionic", "Xamarin", "php", "Nodejs"]);
                });

              },
            );
          },
        ),
      ),
    );
  }
}
