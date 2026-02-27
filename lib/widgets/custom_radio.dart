import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/app_colors.dart';

class CustomRadio extends StatelessWidget {
  final bool isSelected;
  final Color selectedColor;
  final Color unselectedColor;
  final double width;
  final double height;

  const CustomRadio({
    super.key,
    required this.isSelected,
    required this.selectedColor,
    required this.unselectedColor,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? selectedColor : unselectedColor,
          width: 1,
        ),
      ),
      child: isSelected
          ? Center(
              child: Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.orange2,
                ),
              ),
            )
          : null,
    );
  }
}
