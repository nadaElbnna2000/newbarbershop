import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/core/constants/app_colors.dart';
import 'package:flutter_application_1/core/constants/app_sizes.dart';
import 'package:flutter_application_1/core/utils/app_routes.dart';
import 'package:flutter_application_1/widgets/custom_text.dart';
import 'package:flutter_application_1/widgets/custom_icon_button.dart';
import 'package:flutter_application_1/widgets/custom_sized_box.dart';
import 'package:flutter_application_1/modules/auth/auth_controller.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AuthController>();
    controller.startCountdown();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: CustomIconButton(
          icon: Icons.chevron_left,
          color: AppColors.black,
          size: AppSizes.size40,
          onPressed: () => Get.back(),
        ),
        title: CustomText(
          text: 'Login',
          color: AppColors.black,
          size: AppSizes.size16,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.size16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSizedBox(height: AppSizes.size10),
            CustomText(
              text: 'Enter code from SMS',
              size: AppSizes.size14,
              weight: FontWeight.bold,
            ),
            CustomSizedBox(height: AppSizes.size10),
            CustomText(
              text: 'sent to number +380 94 616-19-16',
              size: AppSizes.size16,
              color: AppColors.black87,
              height: AppSizes.size1,
            ),
            CustomSizedBox(height: AppSizes.size30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSizes.size6),
                  child: SizedBox(
                    width: AppSizes.size45,
                    height: AppSizes.size50,
                    child: TextField(
                      controller: controller.otpControllers[index],
                      focusNode: controller.focusNodes[index],
                      onChanged: (value) {
                        if (value.length == 1 && index < controller.focusNodes.length - 1) {
                          FocusScope.of(context).requestFocus(controller.focusNodes[index + 1]);
                        } else if (value.isEmpty && index > 0) {
                          FocusScope.of(context).requestFocus(controller.focusNodes[index - 1]);
                        }
                      },
                      keyboardType: TextInputType.number,
                      showCursor: true,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      style: TextStyle(
                        fontSize: AppSizes.size28,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                        height: 1,
                      ),
                      decoration: InputDecoration(
                        counterText: "",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppSizes.size8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppSizes.size8),
                          borderSide: BorderSide(color: AppColors.grey300),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppSizes.size8),
                          borderSide: BorderSide(color: AppColors.grey300),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            CustomSizedBox(height: AppSizes.size35),
            Obx(() {
              if (controller.otpTimer.value > 0) {
                return CustomText(
                  text: "If you did not recieve the SMS with the code, you can request a second code in ${controller.otpTimer.value} seconds",
                  size: AppSizes.size15,
                  color: AppColors.black87,
                );
              } else {
                return RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "If the SMS did not arrive, you can ",
                        style: TextStyle(color: AppColors.black87, fontSize: AppSizes.size15),
                      ),
                      TextSpan(
                        text: " request a code again",
                        style: TextStyle(
                          color: AppColors.black87,
                          fontSize: AppSizes.size15,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => controller.startCountdown(),
                      ),
                      TextSpan(
                        text: ".",
                        style: TextStyle(color: AppColors.black87, fontSize: AppSizes.size15),
                      ),
                    ],
                  ),
                );
              }
            }),
            CustomSizedBox(height: AppSizes.size20),
            GestureDetector(
              onTap: () => Get.toNamed(AppRoutes.signInCode),
              child: CustomText(
                text: 'Change phone number',
                size: AppSizes.size16,
                decoration: TextDecoration.underline,
                color: AppColors.black54,
                weight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
