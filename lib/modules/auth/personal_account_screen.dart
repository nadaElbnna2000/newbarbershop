import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/core/constants/app_colors.dart';
import 'package:flutter_application_1/core/constants/app_sizes.dart';
import 'package:flutter_application_1/core/utils/app_routes.dart';
import 'package:flutter_application_1/widgets/custom_text.dart';
import 'package:flutter_application_1/widgets/custom_icon_button.dart';
import 'package:flutter_application_1/widgets/custom_sized_box.dart';
import 'package:flutter_application_1/widgets/custom_icon.dart';
import 'package:flutter_application_1/widgets/custom_radio.dart';
import 'package:flutter_application_1/modules/auth/auth_controller.dart';

class PersonalAccountScreen extends StatelessWidget {
  const PersonalAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<AuthController>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          CustomSizedBox(height: AppSizes.size40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomIconButton(
                onPressed: () => Get.back(),
                icon: Icons.arrow_back,
                color: AppColors.black,
                size: AppSizes.size25,
              ),
              CircleAvatar(
                radius: AppSizes.size18,
                backgroundColor: AppColors.black,
                child: CustomText(
                  text: 'GC',
                  size: AppSizes.size14,
                  color: AppColors.white,
                ),
              ),
              CustomSizedBox(width: AppSizes.size8),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'GC Barbershop Parus',
                    size: AppSizes.size16,
                    color: AppColors.black,
                    weight: FontWeight.w500,
                    height: 1,
                  ),
                  CustomText(
                    text: 'gjhjhchhjchjhhiuhiulopiusiujio',
                    size: AppSizes.size12,
                    color: AppColors.grey,
                  ),
                ],
              ),
              CustomIconButton(
                onPressed: () => _showBranchSheet(context),
                icon: Icons.expand_more,
                size: AppSizes.size25,
                color: AppColors.grey,
              ),
            ],
          ),
          CustomSizedBox(height: AppSizes.size10),

          // Personal account card
          Container(
            margin: EdgeInsets.all(AppSizes.size8),
            padding: EdgeInsets.all(AppSizes.size6),
            decoration: BoxDecoration(
              border: const Border(),
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(AppSizes.size12),
                bottomRight: Radius.circular(AppSizes.size12),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.grey04,
                  blurRadius: AppSizes.size15,
                  spreadRadius: AppSizes.sizeNeg10,
                  offset: Offset(AppSizes.size0, AppSizes.size4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomText(
                      text: 'Personal account',
                      size: AppSizes.size24,
                      color: AppColors.black,
                      weight: FontWeight.bold,
                    ),
                  ],
                ),
                CustomSizedBox(height: AppSizes.size6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Change the language',
                          size: AppSizes.size16,
                          color: AppColors.grey,
                          weight: FontWeight.w400,
                        ),
                        Obx(() => CustomText(
                              text: controller.selectedLanguage.value,
                              size: AppSizes.size14,
                              color: AppColors.black,
                              weight: FontWeight.w400,
                            )),
                      ],
                    ),
                    const Spacer(),
                    CustomIconButton(
                      onPressed: () => _showLanguageOptions(context, controller),
                      icon: Icons.chevron_right,
                      size: AppSizes.size32,
                      color: AppColors.grey300,
                    ),
                  ],
                ),
                CustomSizedBox(height: AppSizes.size20),
                GestureDetector(
                  onTap: () => Get.toNamed(AppRoutes.signInCode),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.orange2,
                      borderRadius: BorderRadius.circular(AppSizes.size15),
                    ),
                    width: double.infinity,
                    height: AppSizes.size50,
                    child: Center(
                      child: CustomText(
                        text: 'Sign in',
                        size: AppSizes.size16,
                        color: AppColors.black54,
                        weight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                CustomSizedBox(height: AppSizes.size12),
              ],
            ),
          ),
          CustomSizedBox(height: AppSizes.size55),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => _showAboutMasClients(context),
                child: CustomText(
                  text: ' Powered by Mas Clients',
                  size: AppSizes.size16,
                  color: AppColors.greyShade500,
                ),
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => Get.offAllNamed(AppRoutes.home),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.orange2,
                borderRadius: BorderRadius.circular(AppSizes.size15),
              ),
              width: AppSizes.size360,
              height: AppSizes.size50,
              child: Center(
                child: CustomText(
                  text: 'New booking',
                  size: AppSizes.size18,
                  color: AppColors.black54,
                  weight: FontWeight.w400,
                ),
              ),
            ),
          ),
          CustomSizedBox(height: AppSizes.size20),
        ],
      ),
    );
  }

  void _showLanguageOptions(BuildContext context, AuthController controller) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: const RoundedRectangleBorder(),
      builder: (BuildContext context) {
        return FractionallySizedBox(
          widthFactor: AppSizes.size09,
          child: Container(
            color: AppColors.darkgrey,
            height: MediaQuery.of(context).size.height * 0.935,
            child: ListView.builder(
              itemCount: controller.languages.length,
              itemBuilder: (BuildContext context, int index) {
                final lang = controller.languages[index];
                return Padding(
                  padding: EdgeInsets.all(AppSizes.size12),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            text: lang["language"],
                            size: AppSizes.size21,
                            color: AppColors.white,
                            weight: FontWeight.w400,
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              controller.selectLanguage(index);
                              Get.back();
                            },
                            child: Obx(() => CustomRadio(
                                  width: AppSizes.size20,
                                  height: AppSizes.size20,
                                  selectedColor: AppColors.white,
                                  unselectedColor: AppColors.white,
                                  isSelected: controller.selectedLanguageIndex.value == index,
                                )),
                          ),
                        ],
                      ),
                      CustomSizedBox(height: AppSizes.size15),
                      Container(
                        height: AppSizes.sizehalf,
                        width: double.infinity,
                        color: Colors.white24,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  void _showBranchSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(AppSizes.size16)),
      ),
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * AppSizes.size030,
          child: Padding(
            padding: EdgeInsets.all(AppSizes.size16),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomSizedBox(height: AppSizes.size35),
                    CustomText(
                      text: 'GC BarberShop Parus',
                      align: TextAlign.center,
                      size: AppSizes.size14,
                      weight: FontWeight.bold,
                    ),
                    CustomText(
                      text: 'jhfiuehiueueueuifeueueeui',
                      align: TextAlign.center,
                      size: AppSizes.size18,
                      color: AppColors.grey09999,
                    ),
                    CustomSizedBox(height: AppSizes.size40),
                    CustomSizedBox(
                      height: AppSizes.size46,
                      width: double.infinity,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.lightOrange1),
                            borderRadius: BorderRadius.circular(AppSizes.size14),
                          ),
                          alignment: Alignment.center,
                          child: CustomText(
                            text: 'About the branch ',
                            color: AppColors.black87_07,
                            size: AppSizes.size16,
                          ),
                        ),
                      ),
                    ),
                    CustomSizedBox(height: AppSizes.size15),
                  ],
                ),
                Positioned(
                  right: 3,
                  child: GestureDetector(
                    onTap: () => Get.back(),
                    child: CircleAvatar(
                      radius: AppSizes.size10,
                      backgroundColor: AppColors.grey15,
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

  void _showAboutMasClients(BuildContext context) {
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
                            borderRadius: BorderRadius.circular(AppSizes.size14),
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
                    child: CircleAvatar(
                      radius: AppSizes.size10,
                      backgroundColor: AppColors.grey15,
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
