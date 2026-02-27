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
import 'package:flutter_application_1/widgets/custom_image.dart';
import 'package:flutter_application_1/widgets/custom_icon.dart';
import 'package:flutter_application_1/widgets/custom_checkbox.dart';
import 'package:flutter_application_1/widgets/custom_radio.dart';
import 'package:flutter_application_1/modules/booking/booking_controller.dart';

class BookingDetailsScreen extends StatelessWidget {
  const BookingDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BookingController>();

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
                  size: AppSizes.size25,
                  color: AppColors.black,
                ),
                CustomCircleAvatar(
                  radius: 18,
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
                      color: AppColors.grey,
                      size: AppSizes.size14,
                    ),
                  ],
                ),
              ],
            ),
            CustomSizedBox(height: AppSizes.size10),
            Padding(
              padding: EdgeInsets.only(left: AppSizes.size20),
              child: CustomText(
                text: 'Booking details',
                color: AppColors.black,
                size: AppSizes.size25,
                weight: FontWeight.bold,
              ),
            ),
            CustomSizedBox(height: AppSizes.size10),

            // Barber info + date card
            Container(
              margin: EdgeInsets.all(AppSizes.size8),
              padding: EdgeInsets.all(AppSizes.size6),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: AppColors.grey02, width: AppSizes.size1),
                ),
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppSizes.size12),
                  bottomRight: Radius.circular(AppSizes.size12),
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.grey02,
                    blurRadius: AppSizes.size15,
                    spreadRadius: AppSizes.sizeNeg10,
                    offset: Offset(AppSizes.size0, AppSizes.size4),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Barber Info
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomCircleAvatar(
                        color: AppColors.white1,
                        radius: AppSizes.size25,
                        child: CustomImage(
                          height: AppSizes.size30,
                          width: AppSizes.size30,
                          image: 'assets/images/default3.png',
                        ),
                      ),
                      CustomSizedBox(width: AppSizes.size8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Тарас Яворницький',
                            size: AppSizes.size16,
                            color: AppColors.black,
                          ),
                          CustomSizedBox(height: AppSizes.size4),
                          CustomText(
                            text: 'СТАРШИЙ БАРБЕР',
                            size: AppSizes.size14,
                            color: AppColors.grey700,
                          ),
                          CustomSizedBox(height: AppSizes.size8),
                          Row(
                            children: [
                              Row(
                                children: List.generate(
                                  AppSizes.size5,
                                  (index) => CustomIcon(
                                    icon: Icons.star,
                                    color: AppColors.amber,
                                    size: AppSizes.size16,
                                  ),
                                ),
                              ),
                              CustomSizedBox(width: AppSizes.size8),
                              CustomText(
                                text: '55 reviews',
                                size: AppSizes.size14,
                                color: AppColors.grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      CustomIconButton(
                        onPressed: () {},
                        icon: Icons.edit,
                        color: AppColors.grey,
                      ),
                    ],
                  ),
                  CustomSizedBox(height: AppSizes.size25),
                  // Date Info
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomCircleAvatar(
                            color: AppColors.white1,
                            radius: AppSizes.size25,
                            child: CustomImage(
                              height: AppSizes.size50,
                              width: AppSizes.size50,
                              image: 'assets/images/calender5.png',
                            ),
                          ),
                          CustomSizedBox(width: AppSizes.size16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: 'Thursday, 23 January',
                                size: AppSizes.size16,
                                color: AppColors.grey700,
                              ),
                              CustomSizedBox(height: AppSizes.size4),
                              CustomText(
                                text: '11:00 - 11:30 ',
                                size: AppSizes.size14,
                                color: AppColors.black,
                              ),
                              CustomSizedBox(height: AppSizes.size8),
                            ],
                          ),
                          const Spacer(),
                          CustomIconButton(
                            onPressed: () {},
                            icon: Icons.edit,
                            color: AppColors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                  CustomSizedBox(height: AppSizes.size20),
                  Container(
                    height: AppSizes.size1,
                    width: double.infinity,
                    color: AppColors.grey100,
                  ),
                  // Services
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(
                        text: 'Services',
                        size: AppSizes.size21,
                        color: AppColors.black,
                        weight: FontWeight.bold,
                      ),
                      CustomSizedBox(width: AppSizes.size4),
                      CustomText(
                        text: '30 min',
                        size: AppSizes.size16,
                        color: AppColors.greyShade500,
                      ),
                      const Spacer(),
                      CustomIconButton(
                        icon: Icons.edit,
                        onPressed: () {},
                        color: AppColors.grey,
                      ),
                    ],
                  ),
                  ...controller.services.map((service) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: service.name,
                              size: AppSizes.size16,
                              color: AppColors.black,
                            ),
                            CustomText(
                              text: service.price,
                              size: AppSizes.size14,
                              color: AppColors.black,
                              weight: FontWeight.w400,
                            ),
                          ],
                        ),
                        CustomText(
                          text: service.duration,
                          size: AppSizes.size14,
                          color: AppColors.black45,
                        ),
                        CustomSizedBox(height: AppSizes.size15),
                      ],
                    );
                  }),
                  Container(
                    height: AppSizes.size1,
                    width: double.infinity,
                    color: AppColors.grey100,
                  ),
                  CustomSizedBox(height: AppSizes.size10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "Total ",
                        size: AppSizes.size14,
                        color: AppColors.black,
                      ),
                      const Spacer(),
                      Obx(() => CustomText(
                            text: " ${controller.totalPrice}",
                            size: AppSizes.size14,
                            color: AppColors.black,
                          )),
                    ],
                  ),
                  CustomSizedBox(height: AppSizes.size10),
                ],
              ),
            ),

            // Personal Information card
            Container(
              margin: EdgeInsets.all(AppSizes.size8),
              padding: EdgeInsets.all(AppSizes.size16),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(AppSizes.size12),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.grey02,
                    blurRadius: AppSizes.size10,
                    spreadRadius: AppSizes.size4,
                    offset: Offset(AppSizes.size0, AppSizes.size3),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomText(
                        text: "Personal Information",
                        size: AppSizes.size22,
                        color: AppColors.black,
                        weight: FontWeight.bold,
                      ),
                    ],
                  ),
                  CustomSizedBox(height: AppSizes.size20),
                  CustomText(text: "Name *", size: AppSizes.size12, color: AppColors.black87),
                  CustomSizedBox(height: AppSizes.size6),
                  TextField(
                    controller: controller.nameController,
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.orange.shade100, width: 1.0),
                      ),
                      hintText: "Enter the name",
                      hintStyle: TextStyle(color: Colors.grey.shade500, fontWeight: FontWeight.w400),
                    ),
                  ),
                  CustomSizedBox(height: AppSizes.size20),
                  CustomText(text: "Phone *", size: AppSizes.size12, color: AppColors.black87),
                  CustomText(
                    text: "Will be used to confirm the booking",
                    size: AppSizes.size12,
                    color: AppColors.grey400,
                  ),
                  CustomSizedBox(height: AppSizes.size6),
                  TextField(
                    controller: controller.phoneController,
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.orange.shade100, width: 1.0),
                      ),
                      hintText: "Enter the phone",
                      hintStyle: TextStyle(color: Colors.grey.shade500, fontWeight: FontWeight.w400),
                    ),
                  ),
                  CustomSizedBox(height: AppSizes.size20),
                  CustomText(text: "E-mail *", size: AppSizes.size12, color: AppColors.black87),
                  CustomSizedBox(height: AppSizes.size6),
                  TextField(
                    controller: controller.emailController,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.orange.shade100, width: 1.0),
                      ),
                      hintText: "Enter email",
                      hintStyle: TextStyle(color: Colors.grey.shade500, fontWeight: FontWeight.w400),
                    ),
                  ),
                  CustomSizedBox(height: AppSizes.size20),
                  CustomText(text: "Comment *", size: AppSizes.size12, color: AppColors.black87),
                  CustomSizedBox(height: AppSizes.size6),
                  TextField(
                    controller: controller.commentController,
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.orange.shade100, width: 1.0),
                      ),
                      hintText: "Comment",
                      hintStyle: TextStyle(color: Colors.grey.shade500, fontWeight: FontWeight.w400),
                    ),
                  ),
                  CustomSizedBox(height: AppSizes.size20),
                  CustomSizedBox(height: AppSizes.size6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: "Reminder ",
                            color: AppColors.greyShade500,
                            size: AppSizes.size14,
                            weight: FontWeight.w500,
                          ),
                          CustomSizedBox(height: AppSizes.size6),
                          Row(
                            children: [
                              Obx(() => CustomText(
                                    text: controller.selectedReminder.value,
                                    color: AppColors.black87,
                                    size: AppSizes.size16,
                                    weight: FontWeight.w400,
                                  )),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      CustomIconButton(
                        onPressed: () => _showReminderOptions(context, controller),
                        icon: Icons.chevron_right,
                        size: AppSizes.size35,
                        color: AppColors.grey400,
                      ),
                    ],
                  ),
                  CustomSizedBox(height: AppSizes.size15),
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
                              style: TextStyle(
                                color: AppColors.black,
                                fontSize: AppSizes.size14,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Get.toNamed(AppRoutes.userAgreements),
                            ),
                            const TextSpan(
                              text: ' and ',
                              style: TextStyle(color: AppColors.black),
                            ),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: const TextStyle(color: AppColors.grey),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Get.toNamed(AppRoutes.privacyPolicy),
                            ),
                            const TextSpan(
                              text: '.',
                              style: TextStyle(color: AppColors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Total card
            Container(
              margin: EdgeInsets.all(AppSizes.size8),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(AppSizes.size12),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.grey02,
                    blurRadius: AppSizes.size10,
                    spreadRadius: AppSizes.size4,
                    offset: Offset(AppSizes.size0, AppSizes.size3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  CustomText(text: "Total ", size: AppSizes.size14, color: AppColors.black),
                  const Spacer(),
                  Obx(() => CustomText(
                        text: " ${controller.totalPrice}",
                        size: AppSizes.size14,
                        color: AppColors.black,
                      )),
                ],
              ),
            ),

            // Book button
            Container(
              margin: EdgeInsets.all(AppSizes.size8),
              padding: EdgeInsets.all(AppSizes.size16),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(AppSizes.size12),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.grey02,
                    blurRadius: AppSizes.size10,
                    spreadRadius: AppSizes.size4,
                    offset: Offset(AppSizes.size0, AppSizes.size3),
                  ),
                ],
              ),
              child: GestureDetector(
                onTap: () => Get.toNamed(AppRoutes.bookingConfirmation),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.orange2,
                    borderRadius: BorderRadius.circular(AppSizes.size15),
                  ),
                  width: double.infinity,
                  height: AppSizes.size45,
                  child: Center(
                    child: CustomText(
                      text: 'Book',
                      size: AppSizes.size18,
                      color: AppColors.black54,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showReminderOptions(BuildContext context, BookingController controller) {
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
              itemCount: controller.reminderSlots.length,
              itemBuilder: (BuildContext context, int index) {
                final slot = controller.reminderSlots[index];
                return Padding(
                  padding: EdgeInsets.all(AppSizes.size12),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            text: slot,
                            size: AppSizes.size21,
                            color: AppColors.white,
                            weight: FontWeight.w400,
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              controller.selectReminder(index);
                              Get.back();
                            },
                            child: Obx(() => CustomRadio(
                                  width: AppSizes.size20,
                                  height: AppSizes.size20,
                                  selectedColor: Colors.white,
                                  unselectedColor: Colors.white,
                                  isSelected: controller.selectedReminderIndex.value == index,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(height: AppSizes.size15),
                      Container(
                        height: AppSizes.sizehalf,
                        width: double.infinity,
                        color: AppColors.white24,
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
}
