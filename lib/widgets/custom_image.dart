import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;

  const CustomImage({super.key, required this.image, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(image),
      height: height,
      width: width,
    );
  }
}
