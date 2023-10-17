import 'package:beyond_factoring/src/color/app_color.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final EdgeInsets margin;
  final double fontSize;
  final FontWeight fontWeight;
  final double spacing;
  final double height;
  final Color color;
  final int? maxLines;
  final TextAlign? align;

  const TextWidget({
    Key? key,
    required this.text,
    this.margin = EdgeInsets.zero,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w500,
    this.spacing = 0,
    this.height = 0,
    this.color = AppColor.white,
    this.maxLines,
    this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: margin,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: AppColor.fontFamily,
          fontWeight: fontWeight,
          fontSize: fontSize,
          letterSpacing: spacing,
          color: color,
          height: height,
        ),
        textAlign: align ?? TextAlign.center,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
