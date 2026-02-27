import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  final double? radius;
  final Color? color;
  final Widget? child;

  const CustomCircleAvatar({super.key, this.radius, this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: color,
      child: child,
    );
  }
}
