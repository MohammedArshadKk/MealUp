import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final double? textScaleFactor;
  final TextDirection? textDirection;
  final bool softWrap;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final String? fontFamily;
  const CustomText({
    super.key,
    required this.text,
    this.style,
    this.textAlign = TextAlign.start,
    this.overflow = TextOverflow.clip,
    this.maxLines,
    this.textScaleFactor = 1.0,
    this.textDirection,
    this.softWrap = true,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style?.copyWith(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ) ??
          TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontStyle: fontStyle,
            fontFamily: fontFamily,
          ),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      textDirection: textDirection,
      softWrap: softWrap,
    );
  }
}