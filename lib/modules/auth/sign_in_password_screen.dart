import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/core/constants/app_colors.dart';
import 'package:flutter_application_1/core/constants/app_sizes.dart';
import 'package:flutter_application_1/core/utils/app_routes.dart';
import 'package:flutter_application_1/widgets/custom_text.dart';
import 'package:flutter_application_1/widgets/custom_icon_button.dart';
import 'package:flutter_application_1/widgets/custom_sized_box.dart';
import 'package:flutter_application_1/widgets/custom_circle_avatar.dart';
import 'package:flutter_application_1/widgets/custom_icon.dart';
import 'package:flutter_application_1/widgets/custom_checkbox.dart';
import 'package:flutter_application_1/modules/auth/auth_controller.dart';

class SignInWithPasswordScreen extends StatelessWidget {
  const SignInWithPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AuthController>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: AppSizes.size0,
        backgroundColor: AppColors.white,
        leading: CustomIconButton(
          icon: Icons.arrow_back,
          color: AppColors.black,
          onPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.size16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSizedBox(height: AppSizes.size20),
              CustomCircleAvatar(
                radius: AppSizes.size32,
                color: AppColors.black,
                child: CustomText(
                  text: "GC",
                  color: AppColors.white,
                  size: AppSizes.size24,
                  weight: FontWeight.bold,
                ),
              ),
              CustomSizedBox(height: AppSizes.size10),
              CustomText(
                text: "GC Barbershop Parus",
                size: AppSizes.size18,
                weight: FontWeight.w600,
              ),
              CustomSizedBox(height: AppSizes.size30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () => Get.offNamed(AppRoutes.signInCode),
                        child: CustomText(
                          text: 'Sign in with a code',
                          size: AppSizes.size16,
                          color: AppColors.grey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CustomText(
                        text: 'Sign in with password',
                        size: AppSizes.size16,
                        color: AppColors.black,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: AppSizes.size4),
                        height: AppSizes.size1,
                        width: AppSizes.size170,
                        color: AppColors.orange2,
                      ),
                    ],
                  ),
                ],
              ),
              CustomSizedBox(height: AppSizes.size25),
              Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: "If you already have an account with us, please enter your login details below",
                  size: AppSizes.size13,
                  color: Colors.grey,
                  weight: FontWeight.w400,
                ),
              ),
              CustomSizedBox(height: AppSizes.size25),
              CustomText(
                text: "Phone or email*",
                color: AppColors.black87,
                size: AppSizes.size12,
              ),
              CustomSizedBox(height: AppSizes.size6),
              TextField(
                controller: controller.emailController,
                keyboardType: TextInputType.emailAddress,
                cursorColor: AppColors.orange,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppSizes.size15),
                    borderSide: BorderSide(color: AppColors.grey300),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppSizes.size15),
                    borderSide: BorderSide(color: AppColors.orange100, width: AppSizes.size1),
                  ),
                  hintText: "",
                  hintStyle: TextStyle(color: AppColors.grey500, fontWeight: FontWeight.w400),
                ),
              ),
              CustomSizedBox(height: AppSizes.size6),
              CustomText(
                text: "Password*",
                color: AppColors.black87,
                size: AppSizes.size12,
              ),
              CustomSizedBox(height: AppSizes.size6),
              TextField(
                controller: controller.passwordController,
                keyboardType: TextInputType.text,
                cursorColor: AppColors.orange,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppSizes.size15),
                    borderSide: BorderSide(color: AppColors.grey300),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppSizes.size15),
                    borderSide: BorderSide(color: AppColors.orange100, width: AppSizes.size1),
                  ),
                  hintText: "",
                  hintStyle: TextStyle(color: AppColors.grey500, fontWeight: FontWeight.w400),
                ),
              ),
              CustomSizedBox(height: AppSizes.size30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Obx(() => CustomCheckbox(
                        value: controller.isChecked.value,
                        onChanged: (bool? newValue) {
                          controller.isChecked.value = newValue!;
                        },
                      )),
                  CustomSizedBox(width: AppSizes.size10),
                  RichText(
                    text: TextSpan(
                      text: "I agree to the ",
                      style: const TextStyle(color: AppColors.black),
                      children: [
                        TextSpan(
                          text: 'User Agreement',
                          style: TextStyle(color: AppColors.grey, fontSize: AppSizes.size14),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.toNamed(AppRoutes.userAgreements),
                        ),
                        const TextSpan(text: ' and ', style: TextStyle(color: AppColors.black)),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: const TextStyle(color: AppColors.grey),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.toNamed(AppRoutes.privacyPolicy),
                        ),
                        const TextSpan(text: '.', style: TextStyle(color: AppColors.black)),
                      ],
                    ),
                  ),
                ],
              ),
              CustomSizedBox(height: AppSizes.size20),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.orange2,
                    borderRadius: BorderRadius.circular(AppSizes.size15),
                  ),
                  width: AppSizes.size340,
                  height: AppSizes.size48,
                  child: Center(
                    child: CustomText(
                      text: 'Sign in',
                      size: AppSizes.size16,
                      color: AppColors.black54,
                      weight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              CustomSizedBox(height: AppSizes.size80),
              GestureDetector(
                onTap: () => _showCustomBottomSheet(context),
                child: Center(
                  child: CustomText(
                    text: "Powered by Mas Clients",
                    size: AppSizes.size17,
                    color: AppColors.grey,
                  ),
                ),
              ),
              CustomSizedBox(height: AppSizes.size20),
            ],
          ),
        ),
      ),
    );
  }

  void _showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(AppSizes.size16)),
      ),
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * AppSizes.sizeDot28,
          child: Padding(
            padding: EdgeInsets.all(AppSizes.size16),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomSizedBox(height: AppSizes.size20),
                    CustomText(
                      text: 'Go to website Mas Clients',
                      align: TextAlign.center,
                      size: AppSizes.size20,
                      weight: FontWeight.bold,
                    ),
                    CustomSizedBox(height: AppSizes.size40),
                    CustomSizedBox(
                      height: AppSizes.size46,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.yellowShade700_09999,
                          foregroundColor: AppColors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppSizes.size14),
                          ),
                        ),
                        child: CustomText(
                          text: 'Go to ',
                          color: AppColors.black87_07,
                          size: AppSizes.size16,
                        ),
                      ),
                    ),
                    CustomSizedBox(height: AppSizes.size15),
                    CustomSizedBox(
                      height: AppSizes.size46,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Get.back(),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: AppColors.grey15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        child: CustomText(
                          text: 'close',
                          color: AppColors.black87_07,
                          size: AppSizes.size16,
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  right: AppSizes.size3,
                  child: GestureDetector(
                    onTap: () => Get.back(),
                    child: CustomCircleAvatar(
                      radius: AppSizes.size10,
                      color: AppColors.grey15,
                      child: CustomIcon(
                        icon: Icons.close,
                        color: AppColors.black,
                        size: AppSizes.size12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
