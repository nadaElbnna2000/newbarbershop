import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/core/constants/app_colors.dart';
import 'package:flutter_application_1/core/constants/app_sizes.dart';
import 'package:flutter_application_1/core/constants/app_images.dart';
import 'package:flutter_application_1/core/utils/app_routes.dart';
import 'package:flutter_application_1/widgets/custom_text.dart';
import 'package:flutter_application_1/widgets/custom_icon.dart';
import 'package:flutter_application_1/widgets/custom_icon_button.dart';
import 'package:flutter_application_1/widgets/custom_sized_box.dart';
import 'package:flutter_application_1/widgets/custom_circle_avatar.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSizedBox(height: AppSizes.size40),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: AppSizes.size100,
                color: AppColors.grey15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: AppSizes.size20,
                        bottom: AppSizes.size40,
                      ),
                      child: CustomIconButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.personalAccount);
                        },
                        icon: Icons.person,
                        color: AppColors.black,
                        size: AppSizes.size38,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: AppSizes.sizeNeg55,
                top: AppSizes.size60,
                left: AppSizes.size20,
                child: CircleAvatar(
                  radius: AppSizes.size42,
                  backgroundColor: Colors.black,
                  child: CustomText(
                    text: 'GC',
                    color: AppColors.white,
                    size: AppSizes.size35,
                  ),
                ),
              ),
            ],
          ),
          CustomSizedBox(height: AppSizes.size60),
          Padding(
            padding: EdgeInsets.only(left: AppSizes.size22),
            child: Row(
              children: [
                CustomText(
                  text: 'GC Barbershop Parus',
                  color: AppColors.black,
                  size: AppSizes.size22,
                  weight: FontWeight.bold,
                  height: AppSizes.sizehalf,
                ),
                CustomIconButton(
                  onPressed: () {
                    _showBranchOptions(context);
                  },
                  icon: Icons.expand_more,
                  size: AppSizes.size35,
                  color: AppColors.grey,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: AppSizes.size22),
            child: CustomText(
              text: 'gjhjhchhjchjhhiuhiulopiusiujio',
              color: AppColors.grey,
              size: AppSizes.size14,
              height: AppSizes.sizehalf,
            ),
          ),
          CustomSizedBox(height: AppSizes.size20),
          ListTile(
            leading: CustomCircleAvatar(
              radius: AppSizes.size24,
              color: AppColors.white1,
              child: const Image(image: AssetImage(AppImages.group)),
            ),
            title: CustomText(
              text: 'Choose a specialist',
              size: AppSizes.size16,
              color: AppColors.black87_07,
              weight: FontWeight.w400,
            ),
            trailing: CustomIcon(
              icon: Icons.arrow_forward_ios,
              color: AppColors.black87_06,
              size: AppSizes.size15,
            ),
            onTap: () {
              Get.toNamed(AppRoutes.specialist);
            },
          ),
          ListTile(
            leading: CustomCircleAvatar(
              radius: AppSizes.size24,
              color: AppColors.white1,
              child: const Image(image: AssetImage(AppImages.menu2)),
            ),
            title: CustomText(
              text: 'Select a Service',
              color: AppColors.black87_07,
              size: AppSizes.size16,
              weight: FontWeight.w400,
            ),
            trailing: CustomIcon(
              icon: Icons.arrow_forward_ios,
              color: AppColors.black87_06,
              size: AppSizes.size15,
            ),
            onTap: () {
              Get.toNamed(AppRoutes.selectService);
            },
          ),
          ListTile(
            leading: CustomCircleAvatar(
              radius: AppSizes.size24,
              color: AppColors.white1,
              child: const Image(image: AssetImage(AppImages.calender5)),
            ),
            title: CustomText(
              text: 'Select date and time',
              color: AppColors.black87_07,
              size: AppSizes.size16,
              weight: FontWeight.w400,
            ),
            trailing: CustomIcon(
              icon: Icons.arrow_forward_ios,
              color: AppColors.black87_06,
              size: AppSizes.size15,
            ),
            onTap: () {
              Get.toNamed(AppRoutes.selectDate);
            },
          ),
          CustomSizedBox(height: AppSizes.size50),
          Padding(
            padding: EdgeInsets.only(bottom: AppSizes.size16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    _showAboutMasClients(context);
                  },
                  child: CustomText(
                    text: ' Powered by Mas Clients',
                    color: AppColors.greyShade500,
                    size: AppSizes.size16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showBranchOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.vertical(top: Radius.circular(AppSizes.size16)),
      ),
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * AppSizes.sizeDot37,
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
                      size: AppSizes.size24,
                      weight: FontWeight.bold,
                      align: TextAlign.center,
                    ),
                    CustomText(
                      text: 'jhfiuehiueueueuifeueueeui',
                      size: AppSizes.size18,
                      align: TextAlign.center,
                      color: AppColors.grey09999,
                    ),
                    CustomSizedBox(height: AppSizes.size35),
                    CustomSizedBox(
                      height: AppSizes.size46,
                      width: double.infinity,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.lightOrange1),
                            borderRadius:
                                BorderRadius.circular(AppSizes.size14),
                          ),
                          alignment: Alignment.center,
                          child: CustomText(
                            text: 'About the branch ',
                            size: AppSizes.size16,
                            color: AppColors.black87_07,
                          ),
                        ),
                      ),
                    ),
                    CustomSizedBox(height: AppSizes.size15),
                    CustomSizedBox(
                      height: AppSizes.size46,
                      width: double.infinity,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.lightOrange1),
                            borderRadius:
                                BorderRadius.circular(AppSizes.size14),
                          ),
                          alignment: Alignment.center,
                          child: CustomText(
                            text: 'All locations ',
                            size: AppSizes.size16,
                            color: AppColors.black87_07,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  right: AppSizes.size3,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
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

  void _showAboutMasClients(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.vertical(top: Radius.circular(AppSizes.size16)),
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
                      size: AppSizes.size20,
                      weight: FontWeight.bold,
                      align: TextAlign.center,
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
                            borderRadius:
                                BorderRadius.circular(AppSizes.size14),
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
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: AppColors.grey15),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(AppSizes.size14),
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
                    onTap: () {
                      Navigator.of(context).pop();
                    },
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
