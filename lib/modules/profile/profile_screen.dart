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
import 'package:flutter_application_1/modules/profile/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProfileController>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                CustomSizedBox(height: AppSizes.size40),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomIconButton(
                      onPressed: () => Get.back(),
                      icon: Icons.arrow_back,
                      color: Colors.black,
                      size: AppSizes.size25,
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
                          color: Colors.black,
                          size: AppSizes.size18,
                          weight: FontWeight.bold,
                          height: 1,
                        ),
                        CustomText(
                          text: 'ggyuuyyjkkjkiihuyygu',
                          color: Colors.grey,
                          size: AppSizes.size14,
                        ),
                      ],
                    ),
                  ],
                ),
                CustomSizedBox(height: AppSizes.size50),

                // Profile card
                Container(
                  margin: EdgeInsets.all(AppSizes.size8),
                  padding: EdgeInsets.all(AppSizes.size8),
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
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Column(
                        children: [
                          CustomSizedBox(height: AppSizes.size100),
                          CustomText(
                            text: 'Василь Вірста (ПРАЦЮЄ В GC ПАРУС)',
                            size: AppSizes.size20,
                            weight: FontWeight.bold,
                            align: TextAlign.center,
                          ),
                          CustomText(
                            text: 'Старший барбер',
                            size: AppSizes.size16,
                            color: AppColors.grey,
                          ),
                          CustomSizedBox(height: AppSizes.size6),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: List.generate(
                                  AppSizes.size5,
                                  (index) => CustomIcon(
                                    icon: Icons.star,
                                    color: AppColors.orange2,
                                    size: AppSizes.size16,
                                  ),
                                ),
                              ),
                              CustomSizedBox(width: AppSizes.size8),
                              CustomText(
                                text: '22 reviews',
                                size: AppSizes.size14,
                                color: AppColors.grey,
                              ),
                            ],
                          ),
                          CustomSizedBox(height: AppSizes.size65),
                        ],
                      ),
                      Positioned(
                        top: AppSizes.sizeNeg40,
                        left: AppSizes.size0,
                        right: AppSizes.size0,
                        child: CustomCircleAvatar(
                          radius: AppSizes.size60,
                          color: AppColors.black,
                          child: CustomText(
                            text: 'GC',
                            color: AppColors.white,
                            size: AppSizes.size24,
                            weight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Reviews card
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Comments',
                        color: AppColors.black87,
                        size: AppSizes.size17,
                        weight: FontWeight.bold,
                      ),
                      CustomSizedBox(height: AppSizes.size20),
                      Obx(() {
                        final displayCount = controller.displayedReviewsCount.value;
                        final reviewsToShow = controller.reviews.take(displayCount).toList();
                        return Column(
                          children: [
                            ...reviewsToShow.asMap().entries.map((entry) {
                              final index = entry.key;
                              final review = entry.value;
                              return Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: AppSizes.size25,
                                        backgroundColor: AppColors.grey15,
                                        child: CustomText(
                                          text: review.name[0],
                                          color: AppColors.white,
                                          size: AppSizes.size24,
                                          weight: FontWeight.bold,
                                        ),
                                      ),
                                      CustomSizedBox(width: AppSizes.size10),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            text: review.name,
                                            height: AppSizes.size1,
                                            color: AppColors.black,
                                            size: AppSizes.size17,
                                          ),
                                          Row(
                                            children: [
                                              Row(
                                                children: List.generate(
                                                  AppSizes.size5,
                                                  (index) => CustomIcon(
                                                    icon: Icons.star,
                                                    color: AppColors.orange2,
                                                    size: AppSizes.size16,
                                                  ),
                                                ),
                                              ),
                                              CustomSizedBox(width: AppSizes.size8),
                                              CustomText(
                                                text: '12 January 2025',
                                                size: AppSizes.size14,
                                                color: AppColors.grey,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  CustomSizedBox(height: AppSizes.size6),
                                  CustomText(
                                    text: review.comment,
                                    color: AppColors.black,
                                    size: AppSizes.size17,
                                  ),
                                  CustomSizedBox(
                                    height: review.comment == '' ? AppSizes.size0 : AppSizes.size20,
                                  ),
                                  if (index < displayCount - 1 && index < controller.reviews.length - 1)
                                    Container(
                                      height: AppSizes.size1,
                                      color: AppColors.grey100,
                                    ),
                                  CustomSizedBox(
                                    height: index < displayCount - 1 && index < controller.reviews.length - 1
                                        ? AppSizes.size20
                                        : AppSizes.size0,
                                  ),
                                ],
                              );
                            }),
                            if (controller.hasMoreReviews)
                              GestureDetector(
                                onTap: () => controller.loadMoreReviews(),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: AppColors.grey02, width: AppSizes.size1),
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(AppSizes.size15),
                                  ),
                                  width: double.infinity,
                                  height: AppSizes.size50,
                                  child: Center(
                                    child: CustomText(
                                      text: 'More reviews',
                                      size: AppSizes.size18,
                                      color: AppColors.black87_06,
                                    ),
                                  ),
                                ),
                              ),
                            CustomSizedBox(height: AppSizes.size6),
                          ],
                        );
                      }),
                    ],
                  ),
                ),
                CustomSizedBox(height: AppSizes.size30),
                GestureDetector(
                  onTap: () => _showAboutMasClients(context),
                  child: CustomText(
                    text: ' Powered by Mas Clients',
                    color: AppColors.greyShade500,
                    size: AppSizes.size16,
                  ),
                ),
                CustomSizedBox(height: AppSizes.size90),
              ],
            ),
          ),
          Positioned(
            bottom: AppSizes.size20,
            left: AppSizes.size20,
            right: AppSizes.size20,
            child: GestureDetector(
              onTap: () => Get.toNamed(AppRoutes.signInCode),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.orange2,
                  borderRadius: BorderRadius.circular(AppSizes.size15),
                ),
                width: AppSizes.size360,
                height: AppSizes.size50,
                child: Center(
                  child: CustomText(
                    text: 'Write a review',
                    size: AppSizes.size16,
                    color: AppColors.black54,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
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
