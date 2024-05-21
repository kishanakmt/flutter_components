import 'package:flutter/material.dart';

class VariableText extends StatelessWidget {
  final String text;
  final Color fontColor;
  final TextAlign textAlign;
  final FontWeight weight;
  final bool underlined, lineThrough;
  final String fontFamily;
  final double fontSize, lineSpacing, letterSpacing, textScaleFactor;
  final int? maxLines;

  final TextOverflow overflow;

  const VariableText({
    this.text = "",
    this.fontColor = Colors.white,
    this.fontSize = 15,
    this.textAlign = TextAlign.center,
    this.weight = FontWeight.normal,
    this.underlined = false,
    this.lineSpacing = 1,
    this.letterSpacing = 0,
    this.textScaleFactor = 1.0,
    this.maxLines,
    this.fontFamily = 'lato',
    this.overflow = TextOverflow.ellipsis,
    this.lineThrough = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: maxLines != null ? TextOverflow.ellipsis : overflow,
      textScaleFactor: textScaleFactor,
      textAlign: textAlign,
      style: TextStyle(
        color: fontColor,
        fontWeight: weight,
        height: lineSpacing,
        letterSpacing: letterSpacing,
        fontSize: fontSize,
        fontFamily: fontFamily,
        decorationThickness: 1.0,
        decoration: underlined
            ? TextDecoration.underline
            : (lineThrough ? TextDecoration.lineThrough : TextDecoration.none),
      ),
    );
  }
}
