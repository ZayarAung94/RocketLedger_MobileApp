import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;

  const AppText(
    this.text, {
    super.key,
    this.textAlign,
    this.maxLines,
    this.overflow,

    // Style Properties
    this.fontSize,
    this.fontWeight,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textScaler: TextScaler.noScaling,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}
