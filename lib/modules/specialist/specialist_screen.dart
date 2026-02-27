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
import 'package:flutter_application_1/widgets/custom_image.dart';
import 'package:flutter_application_1/widgets/custom_radio.dart';
import 'package:flutter_application_1/modules/specialist/specialist_controller.dart';

class SpecialistScreen extends StatelessWidget {
  const SpecialistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SpecialistController>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSizedBox(height: AppSizes.size40),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomIconButton(
                  onPressed: () => Get.back(),
                  icon: Icons.arrow_back,
                  color: AppColors.black,
                  size: AppSizes.size15,
                ),
                CustomCircleAvatar(
                  radius: AppSizes.size18,
                  color: Colors.black,
                  child: CustomText(
                    text: 'GC',
                    color: AppColors.white,
                    size: AppSizes.size14,
                  ),
                ),
                CustomSizedBox(width: AppSizes.size8),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'GC Barbershop parus',
                      color: AppColors.black,
                      size: AppSizes.size18,
                      weight: FontWeight.bold,
                      height: AppSizes.size1,
                    ),
                    CustomText(
                      text: 'ggyuuyyjkkjkiihuyygu',
                      color: AppColors.grey,
                      size: AppSizes.size14,
                    ),
                  ],
                ),
              ],
            ),
            CustomSizedBox(height: AppSizes.size30),
            Padding(
              padding: EdgeInsets.only(left: AppSizes.size20),
              child: CustomText(
                text: 'Choose a Specialist',
                color: AppColors.black,
                size: AppSizes.size25,
                weight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    left: AppSizes.size8, right: AppSizes.size8),
                child: Obx(() => ListView.builder(
                      itemCount: controller.specialists.length + 1,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return _buildAnySpecialistItem(controller);
                        }
                        final specialist =
                            controller.specialists[index - 1];
                        return _buildSpecialistItem(
                            controller, specialist, index);
                      },
                    )),
              ),
            ),
            Obx(() {
              if (controller.selectedSpecialistIndex.value != null) {
                return GestureDetector(
                  onTap: () => Get.toNamed(AppRoutes.selectService),
                  child: Padding(
                    padding: EdgeInsets.all(AppSizes.size16),
                    child: Container(
                      width: double.infinity,
                      height: AppSizes.size50,
                      decoration: BoxDecoration(
                        color: AppColors.orange2,
                        borderRadius:
                            BorderRadius.circular(AppSizes.size14),
                      ),
                      child: Center(
                        child: CustomText(
                          text: 'Select service',
                          color: AppColors.black,
                          size: AppSizes.size16,
                        ),
                      ),
                    ),
                  ),
                );
              }
              return const SizedBox.shrink();
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildAnySpecialistItem(SpecialistController controller) {
    return Card(
      elevation: 0.0,
      color: AppColors.white,
      child: Card(
        elevation: 0.0,
        color: AppColors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomCircleAvatar(
              radius: AppSizes.size22,
              color: AppColors.white1,
              child: const CustomImage(image: AppImages.group),
            ),
            CustomSizedBox(width: AppSizes.size10),
            CustomText(
              text: 'Any specialist',
              size: AppSizes.size16,
              color: AppColors.black87_07,
              weight: FontWeight.w400,
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => controller.selectSpecialist(0),
              child: Obx(() => CustomRadio(
                    width: AppSizes.size24,
                    height: AppSizes.size24,
                    selectedColor: AppColors.grey035,
                    unselectedColor: AppColors.grey035,
                    isSelected:
                        controller.selectedSpecialistIndex.value == 0,
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSpecialistItem(
      SpecialistController controller, specialist, int index) {
    return Card(
      elevation: 0.0,
      color: AppColors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: AppSizes.size20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomCircleAvatar(
                color: AppColors.white1,
                radius: AppSizes.size22,
                child: const CustomImage(
                  height: 30,
                  width: 30,
                  image: AppImages.default3,
                ),
              ),
              CustomSizedBox(width: AppSizes.size16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: specialist.name,
                    size: AppSizes.size18,
                    weight: FontWeight.bold,
                  ),
                  CustomSizedBox(height: AppSizes.size4),
                  CustomText(
                    text: specialist.title,
                    size: AppSizes.size14,
                    color: AppColors.grey700,
                  ),
                  CustomSizedBox(height: AppSizes.size8),
                  Row(
                    children: [
                      Row(
                        children: List.generate(
                          AppSizes.size5,
                          (i) => CustomIcon(
                            icon: Icons.star,
                            color: AppColors.orange2,
                            size: AppSizes.size16,
                          ),
                        ),
                      ),
                      CustomSizedBox(width: AppSizes.size8),
                      CustomText(
                        text: '${specialist.reviews} reviews',
                        size: AppSizes.size14,
                        color: AppColors.grey,
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  CustomIconButton(
                    onPressed: () {},
                    icon: Icons.info,
                    color: AppColors.white1,
                  ),
                  GestureDetector(
                    onTap: () => controller.selectSpecialist(index),
                    child: Obx(() => CustomRadio(
                          width: AppSizes.size24,
                          height: AppSizes.size24,
                          selectedColor: AppColors.grey035,
                          unselectedColor: AppColors.grey035,
                          isSelected:
                              controller.selectedSpecialistIndex.value ==
                                  index,
                        )),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: AppSizes.size8),
          Align(
            alignment: Alignment.centerLeft,
            child: CustomText(
              text: 'Nearest time slot for the appointment tomorrow:',
              size: AppSizes.size14,
              color: AppColors.black099,
            ),
          ),
          CustomSizedBox(height: AppSizes.size16),
          CustomSizedBox(
            height: AppSizes.size40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: specialist.timeSlots.length,
              itemBuilder: (context, timeIndex) {
                final time = specialist.timeSlots[timeIndex];
                return _buildTimeSlot(controller, time, index);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeSlot(
      SpecialistController controller, String time, int specialistIndex) {
    return GestureDetector(
      onTap: () => controller.selectTimeSlot(time, specialistIndex),
      child: Obx(() => Container(
            height: AppSizes.size10,
            margin: EdgeInsets.only(right: AppSizes.size8),
            padding: EdgeInsets.symmetric(
                horizontal: AppSizes.size20, vertical: AppSizes.size10),
            decoration: BoxDecoration(
              color: (controller.selectedSpecialistIndex.value ==
                          specialistIndex &&
                      controller.selectedTimeSlot.value == time)
                  ? AppColors.orange2
                  : AppColors.white1,
              borderRadius: BorderRadius.circular(AppSizes.size20),
            ),
            child: Center(
              child: CustomText(
                text: time,
                size: AppSizes.size14,
              ),
            ),
          )),
    );
  }
}
