import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextInputField extends StatelessWidget {

  TextInputField({
    required this.controller,
    required this.hintText,
    this.textInputAction,
    required this.keyType,
    required this.onChanged,
    required this.onValidate,
    this.obscureText = false,
    this.textInputFormatter,
    this.ontapSuffix,
    this.suffixIconPath="",
    this.showSuffixIcn = false,
    this.prefixIconScale = 4,
    this.icons,
  });
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String?)? onChanged;
  final String? Function(String?)? onValidate;
  final TextInputType? keyType;
  final bool? obscureText;
  final Function()? ontapSuffix;
  final List<TextInputFormatter>? textInputFormatter;
  final String? suffixIconPath;
  final bool? showSuffixIcn;
  final double? prefixIconScale;
  TextInputAction? textInputAction;
  final Icon? icons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child:TextFormField(
        cursorColor:Colors.blue,
        obscureText: obscureText!,
        inputFormatters: textInputFormatter ?? [],
        obscuringCharacter: "*",
        controller: controller,
        keyboardType: keyType,
        validator: onValidate,
        textInputAction: textInputAction,
        style: TextStyle(
            color: Colors.black,
            fontFamily: 'Lato',
            fontSize: 16.sp,
            fontWeight: FontWeight.normal),
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white!.withOpacity(0.9),
            isDense: true,
            contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
                color: Colors.blue
              ),

            ),
            hintText: hintText,
            hintStyle: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.normal,
                fontFamily: 'Lato'),
            suffixIcon: InkWell(
                onTap: ontapSuffix,
                child: Visibility(
                  visible: showSuffixIcn!,
                  child: Container(
                    width: 18.w,
                    child: icons
                  ),
                ))),
        onChanged: onChanged,
      ),
    );
  }
}