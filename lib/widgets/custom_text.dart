import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  final double? height;
  final FontWeight? weight;
  final TextAlign? align;
  final TextDecoration? decoration;

  const CustomText({
    super.key,
    required this.text,
    this.color,
    this.size,
    this.height,
    this.weight,
    this.align,
    this.decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
        decoration: decoration,
        color: color,
        fontSize: size,
        fontWeight: weight,
        height: height,
      ),
    );
  }
}
