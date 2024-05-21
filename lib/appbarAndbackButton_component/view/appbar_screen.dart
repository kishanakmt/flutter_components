import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../routes/app_routes.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen({super.key});

  @override
  State<AppBarScreen> createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //First Sample
      /*appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('APP BAR'),
      ),*/
      //Second Sample round corner
      /* appBar: AppBar(
        title: const Text("App Bar "),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
        backgroundColor: Colors.greenAccent[400],
      ), */ //AppBar

      //Third App Bar with shadow and Icon menu,name, message, setting
      appBar: AppBar(
        title: const Text("App Icon"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.camera),
            tooltip: 'Comment Icon',
            onPressed: () {


            },
          ), //IconButton
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ],
        //<Widget>[]
        backgroundColor: Colors.blueGrey[400],
        elevation: 50.0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () {},
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ), //AppBar
      body: Center(
        child: GestureDetector(
            onTap: () {
              Get.offAllNamed(Routes.homeComponentScreen,
              );

              },
            child: const Icon(Icons.arrow_back)),
      ),
    );
  }
}

class NextScreen extends StatefulWidget {
  const NextScreen({super.key});

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Back Button'),
      ),
      body: Center(
        child: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const AppBarScreen()),
              );
            },
            child: const Icon(Icons.arrow_back)),
      ),
    );
  }
}
