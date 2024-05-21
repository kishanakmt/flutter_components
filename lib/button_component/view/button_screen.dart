import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';
import '../comman/button_comman_widget.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blueGrey,
                 title: Text("Button Screen",style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.offAllNamed(Routes.homeComponentScreen,
                );
          },
        ),),

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //--------------------------------- comman widget Button ------------------------------------------------------------
                buttonComman(),
                SizedBox(
                  height: 10.h,
                ),
                //----------------------------------- container in text and icon ------------------------------------------------------
                buttonTextAndIcon(),
                //-------------------------------------simple Elevated Button ---------------------------------------------------------
                elevatedButton(),
                //-------------------------------------border Elevated Button ---------------------------------------------------------
                elevetedButtonBorder(),
                //-------------------------------------shape Elevated Button ----------------------------------------------------------
                elevatedButtonShap(),
                //-------------------------------------icon Elevated Button -----------------------------------------------------------
                elevatedButtonIcon(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  buttonComman() {
    return ButtonCommanWidget(
        ontap: () {
          print("hello");
        },
        fontWeight: FontWeight.normal,
        horizontalPadding: 0,
        title: "ok",
        containerColor: Colors.cyan,
        fontSize: 25.sp);
  }

  buttonTextAndIcon() {
    return GestureDetector(
      onTap: () {
        print("object");
      },
      child: Container(
        //  width: 1.sw,
        decoration: BoxDecoration(
          color: Colors.deepPurpleAccent[100],
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                color: Colors.white,
              ),
              Text(
                "Add",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }



  elevatedButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.blueGrey,
      ),
      onPressed: () {
        print("ok");
      },
      child: const Text('Elevated Button'),
    );
  }

  elevetedButtonBorder() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.green,
        side: const BorderSide(color: Colors.yellow, width: 5),
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 25, fontStyle: FontStyle.normal),
      ),
      onPressed: () {
        print("ok");
      },
      child: const Text('Elevated Button'),
    );
  }

  elevatedButtonShap() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.brown,
        shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
      onPressed: () {
        print("ok");
      },
      child: const Text('Elevated Button',style: TextStyle(color: Colors.grey),),
    );
  }

  elevatedButtonIcon() {
    return Center(
      child: ElevatedButton.icon(
          onPressed: () {
            print("ok");
          },
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 22,
            ),
            primary: Colors.yellow,
            onPrimary: Colors.red,
            padding: const EdgeInsets.all(30.0),
          ),
          icon: const Icon(Icons.send_rounded), //Button icon
          label: const Text("Click Text Button!")), //Button label
    );
  }
}
