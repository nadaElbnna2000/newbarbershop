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

class BookingCancellationScreen extends StatelessWidget {
  const BookingCancellationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
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
                  size: 25,
                ),
                CustomCircleAvatar(
                  radius: AppSizes.size18,
                  color: AppColors.black,
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
                      text: 'GC Barbershop parus',
                      size: AppSizes.size18,
                      color: AppColors.black,
                      weight: FontWeight.bold,
                      height: AppSizes.size1,
                    ),
                    CustomText(
                      text: 'ggyuuyyjkkjkiihuyygu',
                      size: AppSizes.size14,
                      color: AppColors.grey,
                    ),
                  ],
                ),
              ],
            ),
            CustomSizedBox(width: AppSizes.size10),

            // Cancellation card
            Container(
              margin: EdgeInsets.all(AppSizes.size8),
              padding: EdgeInsets.all(AppSizes.size6),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: AppColors.grey02, width: AppSizes.size1),
                ),
                color: AppColors.white,
                borderRadius: BorderRadius.all(Radius.circular(AppSizes.size12)),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.grey02,
                    blurRadius: AppSizes.size10,
                    spreadRadius: AppSizes.size10,
                    offset: Offset(AppSizes.size0, AppSizes.size2),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomSizedBox(height: AppSizes.size30),
                  Center(
                    child: Container(
                      width: AppSizes.size90,
                      height: AppSizes.size90,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.grey, width: AppSizes.size3),
                        color: AppColors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: CustomIcon(
                          icon: Icons.close,
                          size: AppSizes.size45,
                          color: AppColors.grey,
                        ),
                      ),
                    ),
                  ),
                  CustomSizedBox(height: AppSizes.size10),
                  CustomText(
                    text: 'Booking canceled.',
                    size: AppSizes.size20,
                    color: AppColors.black,
                    weight: FontWeight.w800,
                  ),
                  CustomSizedBox(height: AppSizes.size10),
                  GestureDetector(
                    onTap: () => Get.offAllNamed(AppRoutes.home),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.orange2,
                        borderRadius: BorderRadius.circular(AppSizes.size15),
                      ),
                      width: double.infinity,
                      height: AppSizes.size47,
                      child: Center(
                        child: CustomText(
                          text: 'Make another booking',
                          size: AppSizes.size18,
                          color: AppColors.black,
                          weight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  CustomSizedBox(height: AppSizes.size15),
                ],
              ),
            ),

            // Business info card
            Container(
              margin: EdgeInsets.all(AppSizes.size8),
              padding: EdgeInsets.all(AppSizes.size6),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: AppColors.grey02, width: AppSizes.size1),
                ),
                color: AppColors.white,
                borderRadius: BorderRadius.all(Radius.circular(AppSizes.size12)),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.grey02,
                    blurRadius: AppSizes.size10,
                    spreadRadius: AppSizes.size10,
                    offset: Offset(AppSizes.size0, AppSizes.size2),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(AppSizes.size8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomSizedBox(height: AppSizes.size10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: AppSizes.size45,
                          height: AppSizes.size45,
                          decoration: BoxDecoration(
                            color: AppColors.black,
                            borderRadius: BorderRadius.circular(AppSizes.size10),
                          ),
                          child: Center(
                            child: CustomText(
                              text: 'GC',
                              size: AppSizes.size14,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                        CustomSizedBox(width: AppSizes.size15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'GC Barbershop parus',
                              color: AppColors.black,
                              size: AppSizes.size18,
                              height: AppSizes.size1,
                              weight: FontWeight.bold,
                            ),
                            Row(
                              children: [
                                CustomText(
                                  text: 'ggyuuyyjkkjkiihuyygu',
                                  color: AppColors.grey,
                                  size: AppSizes.size14,
                                ),
                                CustomSizedBox(width: AppSizes.size100),
                                CustomIconButton(
                                  onPressed: () {},
                                  icon: Icons.copy,
                                  size: AppSizes.size20,
                                  color: AppColors.grey,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: AppSizes.size1,
                      width: double.infinity,
                      color: AppColors.lightblue,
                    ),
                    CustomSizedBox(height: AppSizes.size4),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomIconButton(
                          onPressed: () {},
                          icon: Icons.call_outlined,
                          size: AppSizes.size25,
                          color: AppColors.amber,
                        ),
                        CustomText(
                          text: "+380 98 239-80-18",
                          color: AppColors.black,
                          size: AppSizes.size16,
                          weight: FontWeight.w400,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomIconButton(
                          onPressed: () {},
                          icon: Icons.attachment_outlined,
                          size: AppSizes.size25,
                          color: AppColors.amber,
                        ),
                        CustomText(
                          text: "www.gentlemensclub.com.ua",
                          color: AppColors.black,
                          size: AppSizes.size16,
                          weight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            CustomSizedBox(height: AppSizes.size30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: CustomText(
                    text: ' Powered by Mas Clients',
                    color: AppColors.greyShade500,
                    size: AppSizes.size16,
                  ),
                ),
              ],
            ),
            CustomSizedBox(height: AppSizes.size30),
          ],
        ),
      ),
    );
  }
}
