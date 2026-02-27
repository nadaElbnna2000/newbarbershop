import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/core/constants/app_colors.dart';
import 'package:flutter_application_1/core/constants/app_sizes.dart';
import 'package:flutter_application_1/core/utils/app_routes.dart';
import 'package:flutter_application_1/widgets/custom_text.dart';
import 'package:flutter_application_1/widgets/custom_icon.dart';
import 'package:flutter_application_1/widgets/custom_icon_button.dart';
import 'package:flutter_application_1/widgets/custom_sized_box.dart';
import 'package:flutter_application_1/widgets/custom_circle_avatar.dart';
import 'package:flutter_application_1/widgets/custom_radio.dart';
import 'package:flutter_application_1/modules/service/service_controller.dart';

class SelectServiceScreen extends StatelessWidget {
  const SelectServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ServiceController>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                    color: AppColors.black,
                    size: AppSizes.size18,
                    weight: FontWeight.bold,
                    height: AppSizes.size1,
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
          CustomSizedBox(height: AppSizes.size30),
          Padding(
            padding: EdgeInsets.only(left: AppSizes.size20),
            child: CustomText(
              text: 'Select services',
              color: AppColors.black,
              size: AppSizes.size25,
              weight: FontWeight.bold,
            ),
          ),
          CustomSizedBox(height: AppSizes.size10),
          Padding(
            padding: EdgeInsets.only(left: AppSizes.size12),
            child: Row(
              children: [
                Container(
                  width: AppSizes.size170,
                  height: AppSizes.size44,
                  decoration: BoxDecoration(
                    color: AppColors.orange2,
                    borderRadius: BorderRadius.circular(AppSizes.size25),
                  ),
                  child: Center(
                    child: CustomText(
                      text: 'СТАРШИЙ БАРБЕР',
                      color: AppColors.black,
                      size: AppSizes.size14,
                    ),
                  ),
                ),
                CustomSizedBox(width: AppSizes.size10),
                Container(
                  width: AppSizes.size120,
                  height: AppSizes.size44,
                  decoration: BoxDecoration(
                    color: AppColors.white1,
                    borderRadius: BorderRadius.circular(AppSizes.size25),
                  ),
                  child: Center(
                    child: CustomText(
                      text: 'ТОП БАРБЕР ',
                      color: AppColors.black,
                      size: AppSizes.size14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomSizedBox(height: AppSizes.size20),
          Padding(
            padding:
                EdgeInsets.only(left: AppSizes.size12, right: AppSizes.size12),
            child: TextField(
              cursorColor: AppColors.lightgrey,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.white,
                prefixIcon:
                    const CustomIcon(icon: Icons.search, color: AppColors.grey),
                hintText: 'Search...',
                hintStyle: const TextStyle(color: AppColors.lightgrey),
                contentPadding: EdgeInsets.symmetric(
                    vertical: AppSizes.size10, horizontal: AppSizes.size15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSizes.size15),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSizes.size15),
                  borderSide:
                      BorderSide(color: AppColors.orange2, width: AppSizes.size1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSizes.size15),
                  borderSide:
                      BorderSide(color: AppColors.grey300, width: AppSizes.size1),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  EdgeInsets.only(left: AppSizes.size8, right: AppSizes.size8),
              child: Obx(() => ListView.builder(
                    itemCount: controller.sections.length,
                    itemBuilder: (context, sectionIndex) {
                      final section = controller.sections[sectionIndex];
                      final isLocked =
                          controller.isSectionLocked(sectionIndex);

                      return Opacity(
                        opacity: isLocked ? AppSizes.sizehalf : AppSizes.size1,
                        child: IgnorePointer(
                          ignoring: isLocked,
                          child: Card(
                            elevation: AppSizes.size0,
                            color: AppColors.white,
                            child: Column(
                              children: [
                                Card(
                                  elevation: AppSizes.size0,
                                  color: AppColors.white,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text: section.name,
                                        size: AppSizes.size24,
                                        weight: FontWeight.bold,
                                      ),
                                      CustomSizedBox(height: AppSizes.size20),
                                      ...section.services
                                          .asMap()
                                          .entries
                                          .map((entry) {
                                        final serviceIndex = entry.key;
                                        final service = entry.value;
                                        return Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomText(
                                                  text: service.name,
                                                  size: AppSizes.size17,
                                                  color: AppColors.black87_07,
                                                  weight: FontWeight.w400,
                                                ),
                                                CustomSizedBox(
                                                    height: AppSizes.size10),
                                                CustomText(
                                                  text: service.price,
                                                  size: AppSizes.size16,
                                                  color: AppColors.black87_07,
                                                  weight: FontWeight.w400,
                                                ),
                                                CustomSizedBox(
                                                    height: AppSizes.size20),
                                              ],
                                            ),
                                            const Spacer(),
                                            GestureDetector(
                                              onTap: () {
                                                controller.toggleService(
                                                    sectionIndex,
                                                    serviceIndex);
                                                _showSelectionDialog(
                                                    context, controller);
                                              },
                                              child: Obx(() => CustomRadio(
                                                    width: AppSizes.size24,
                                                    height: AppSizes.size24,
                                                    selectedColor:
                                                        AppColors.grey035,
                                                    unselectedColor:
                                                        AppColors.grey035,
                                                    isSelected: controller
                                                        .isServiceSelected(
                                                            sectionIndex,
                                                            serviceIndex),
                                                  )),
                                            ),
                                          ],
                                        );
                                      }),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  )),
            ),
          ),
        ],
      ),
    );
  }

  void _showSelectionDialog(
      BuildContext context, ServiceController controller) {
    if (controller.isBottomSheetOpen.value) {
      Navigator.pop(context);
      controller.isBottomSheetOpen.value = false;
      return;
    }
    controller.isBottomSheetOpen.value = true;
    showBottomSheet(
      context: context,
      builder: (context) {
        return Material(
          color: AppColors.white,
          elevation: AppSizes.size12,
          child: Container(
            width: double.infinity,
            height: AppSizes.size130,
            padding: EdgeInsets.only(
                left: AppSizes.size14, right: AppSizes.size14),
            child: Column(
              children: [
                Row(
                  children: [
                    Obx(() => CustomText(
                          text: '${controller.totalSelectedServices} service',
                          size: AppSizes.size18,
                        )),
                    CustomSizedBox(width: AppSizes.size8),
                    const CustomText(
                      text: "30 min",
                      color: AppColors.grey,
                    ),
                    const Spacer(),
                    Obx(() => Text(
                        ' ${controller.totalPrice.toStringAsFixed(2)} ₴')),
                    CustomIconButton(
                      onPressed: () {},
                      icon: Icons.edit,
                      color: AppColors.grey,
                    ),
                  ],
                ),
                CustomSizedBox(height: AppSizes.size4),
                GestureDetector(
                  onTap: () => Get.toNamed(AppRoutes.selectDate),
                  child: Container(
                    width: double.infinity,
                    height: AppSizes.size50,
                    decoration: BoxDecoration(
                      color: AppColors.orange2,
                      borderRadius: BorderRadius.circular(AppSizes.size16),
                    ),
                    child: Center(
                      child: CustomText(
                        text: 'Select date and time',
                        color: AppColors.black,
                        size: AppSizes.size16,
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
