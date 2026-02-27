import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/app_colors.dart';
import 'package:flutter_application_1/core/constants/app_sizes.dart';
import 'package:flutter_application_1/widgets/custom_icon.dart';

class CustomCheckbox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;

  const CustomCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        height: AppSizes.size22,
        width: AppSizes.size22,
        decoration: BoxDecoration(
          color: isChecked ? AppColors.amber : AppColors.transparent,
          borderRadius: BorderRadius.circular(AppSizes.size4),
          border: Border.all(
            color: Colors.grey.shade400,
            width: AppSizes.size0,
          ),
        ),
        child: isChecked
            ? CustomIcon(
                icon: Icons.check,
                size: AppSizes.size16,
                color: AppColors.black,
              )
            : null,
      ),
    );
  }
}
