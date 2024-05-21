

import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../textview_module/comman/textview_comman_widget.dart';

class ButtonCommanWidget extends StatefulWidget {

  late final Function() ontap;
  late final String title;
  final FontWeight? fontWeight;
  late final Color containerColor, fontColor;
  late final bool withBoxShadow;
  final double? fontSize;
  double horizontalPadding;


  ButtonCommanWidget(
      {Key? key,
        required this.ontap,
        required this.title,
        this.fontWeight,
        required this.containerColor,
        this.withBoxShadow = false,
        this.horizontalPadding = 16,
        this.fontSize,
        this.fontColor = Colors.white

      })
      : super(key: key);

  @override
  State<ButtonCommanWidget> createState() => _ButtonCommanWidgetState();
}

class _ButtonCommanWidgetState extends State<ButtonCommanWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.ontap,
      child: Entry.scale(
        duration: const Duration(seconds: 1),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: widget.horizontalPadding),
          child: Container(
            //  width: 1.sw,
            decoration: BoxDecoration(
              color: widget.containerColor,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16),
                child: Center(
                  child: VariableText(
                    text: widget.title,
                    weight: widget.fontWeight!,
                    fontColor: widget.fontColor,
                    fontSize: widget.fontSize ??
                        32,
                    fontFamily:'lato' ,
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
