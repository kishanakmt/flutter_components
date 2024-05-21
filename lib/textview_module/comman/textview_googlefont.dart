import 'dart:ui';
import 'package:flutter/src/painting/text_style.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle {
  static TextStyle styleGoogleFontAcme(
    FontWeight fontWeight,
    Color color,
    double size,
  ) {
    return GoogleFonts.acme(
      fontWeight: fontWeight,
      color: color,
      fontSize: size,
    );
  }

  static TextStyle styleGoogleFontLato(
      FontWeight fontWeight, Color color, double size) {
    return GoogleFonts.lato(
        fontWeight: fontWeight, color: color, fontSize: size);
  }

  static TextStyle styleGoogleFontPopines(
      FontWeight fontWeight, Color color, double size) {
    return GoogleFonts.poppins(
        fontWeight: fontWeight, color: color, fontSize: size);
  }

  static SnackbarController snackBarWidget(
      String title, String message, Color color, Color bgColor) {
    return Get.snackbar(
      title,
      message,
      colorText: color,
      backgroundColor: bgColor,
    );
  }
}
