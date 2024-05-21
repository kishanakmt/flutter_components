import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../routes/app_routes.dart';
import '../comman/textview_comman_widget.dart';
import '../comman/textview_googlefont.dart';

class TextViewScreen extends StatefulWidget {
  const TextViewScreen({super.key});

  @override
  State<TextViewScreen> createState() => _TextViewScreenState();
}

class _TextViewScreenState extends State<TextViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextView Screen",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueGrey,

        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.offAllNamed(Routes.homeComponentScreen,
            );
          },
        ),),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              VariableText(
                text: "Variable Text",
                fontColor: Colors.black,
                textAlign: TextAlign.start,
                fontSize: 22.sp,
                overflow: TextOverflow.visible,
                weight: FontWeight.normal,
                underlined: true,
              ),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                onTap: () {
                  print("Helloooooo");
                },
                child: VariableText(
                  text: "Variable Text",
                  fontColor: Colors.black45,
                  textAlign: TextAlign.start,
                  fontSize: 50.sp,
                  weight: FontWeight.bold,
                  fontFamily: 'OoohBaby',
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: Colors.grey.withOpacity(0.09))),
                child: Padding(
                  padding:  const EdgeInsets.all(8.0),
                  child: VariableText(
                    text: "Variable Text",
                    fontColor: Colors.white,
                    textAlign: TextAlign.start,
                    fontSize: 30.sp,
                    weight: FontWeight.w400,
                    fontFamily: 'RobotoMono',
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              VariableText(
                text: "Variable Text",
                fontColor: Colors.blueGrey,
                textAlign: TextAlign.start,
                fontSize: 25.sp,
                overflow: TextOverflow.visible,
                weight: FontWeight.w300,
              ),
              SizedBox(
                height: 10.h,
              ),
              VariableText(
                text:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                fontColor: Colors.black45,
                textAlign: TextAlign.center,
                fontSize: 14.sp,
                overflow: TextOverflow.visible,
                weight: FontWeight.normal,
              ),
              SizedBox(
                height: 10.h,
              ),
              //------------------------------ Google font style -------------------------------------------------
              const Center(
                child: Text(
                  " -------- Google font style --------",
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "data Heading Line ",
                style: CustomTextStyle.styleGoogleFontPopines(
                  FontWeight.w600,
                  Colors.brown,
                  20.r,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: 10.h,
              ),
              Text(
                "data Heading Line ",
                style: CustomTextStyle.styleGoogleFontLato(
                  FontWeight.w600,
                  Colors.brown,
                  20.r,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "data Heading Line ",
                style: CustomTextStyle.styleGoogleFontAcme(
                  FontWeight.w600,
                  Colors.brown,
                  20.r,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
