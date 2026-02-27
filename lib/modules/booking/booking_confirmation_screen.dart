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
import 'package:flutter_application_1/modules/booking/booking_controller.dart';

class BookingConfirmationScreen extends StatelessWidget {
  const BookingConfirmationScreen({super.key});

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

            // Confirmation card
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
                        border: Border.all(color: AppColors.orange2, width: AppSizes.size3),
                        color: AppColors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: CustomIcon(
                          icon: Icons.check,
                          size: 45,
                          color: AppColors.orange2,
                        ),
                      ),
                    ),
                  ),
                  CustomSizedBox(height: AppSizes.size10),
                  CustomText(
                    text: 'Your booking is confirmed.',
                    size: AppSizes.size20,
                    color: AppColors.black,
                    weight: FontWeight.w800,
                  ),
                  CustomText(
                    text: 'Saturday, 25 January, 9:30-11:00',
                    size: AppSizes.size16,
                    color: AppColors.black87,
                    weight: FontWeight.w400,
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
                  // Barber Info
                  GestureDetector(
                    onTap: () => Get.toNamed(AppRoutes.profile),
                    child: Row(
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
                                      size: AppSizes.size16,
                                      color: AppColors.amber,
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
                          icon: Icons.info,
                          color: AppColors.white1,
                        ),
                      ],
                    ),
                  ),
                  CustomSizedBox(height: AppSizes.size20),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          border: Border.all(color: AppColors.orange200, width: AppSizes.size1),
                          borderRadius: BorderRadius.circular(AppSizes.size15),
                        ),
                        width: AppSizes.size315,
                        height: AppSizes.size50,
                        child: Center(
                          child: CustomText(
                            text: 'Add to Google Calender',
                            size: AppSizes.size18,
                            color: AppColors.black,
                            weight: FontWeight.w300,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      CustomSizedBox(width: AppSizes.size4),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            border: Border.all(color: AppColors.orange200, width: AppSizes.size1),
                            borderRadius: BorderRadius.circular(AppSizes.size15),
                          ),
                          height: AppSizes.size50,
                          child: CustomIconButton(
                            onPressed: () => _showOptionsList(context),
                            icon: Icons.edit,
                            color: AppColors.grey,
                            size: AppSizes.size20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  CustomSizedBox(height: AppSizes.size20),
                ],
              ),
            ),

            // Services card
            Container(
              margin: EdgeInsets.all(AppSizes.size8),
              padding: EdgeInsets.all(AppSizes.size6),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: AppColors.grey02, width: AppSizes.size1),
                ),
                color: Colors.white,
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          text: 'Services',
                          size: AppSizes.size21,
                          color: AppColors.black,
                          weight: FontWeight.bold,
                        ),
                      ],
                    ),
                    CustomSizedBox(height: AppSizes.size10),
                    Container(
                      width: double.infinity,
                      height: AppSizes.size1,
                      color: AppColors.grey100,
                    ),
                    CustomSizedBox(height: AppSizes.size20),
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

  void _showOptionsList(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      backgroundColor: Colors.grey[850],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      builder: (BuildContext context) {
        return FractionallySizedBox(
          widthFactor: 0.94,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.size15),
              color: AppColors.darkgrey,
            ),
            height: MediaQuery.of(context).size.height * 0.190,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppSizes.size12),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      CustomSizedBox(height: AppSizes.size10),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                          Get.toNamed(AppRoutes.selectDate);
                        },
                        child: CustomText(
                          text: "Reschedule booking",
                          color: AppColors.black,
                          size: AppSizes.size18,
                          weight: FontWeight.w300,
                        ),
                      ),
                      CustomSizedBox(height: AppSizes.size6),
                      CustomSizedBox(height: AppSizes.size10),
                      Container(
                        height: 0.5,
                        width: double.infinity,
                        color: AppColors.black,
                      ),
                      CustomSizedBox(height: AppSizes.size10),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                          _showBookingCancelation(context);
                        },
                        child: CustomText(
                          text: "cancel booking",
                          color: AppColors.red,
                          size: AppSizes.size18,
                          weight: FontWeight.w300,
                        ),
                      ),
                      CustomSizedBox(height: AppSizes.size10),
                    ],
                  ),
                ),
                CustomSizedBox(height: AppSizes.size8),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(AppSizes.size12),
                  ),
                  width: double.infinity,
                  height: AppSizes.size47,
                  child: Center(
                    child: CustomText(
                      text: 'close',
                      size: AppSizes.size18,
                      color: AppColors.black,
                      weight: FontWeight.w300,
                    ),
                  ),
                ),
                CustomSizedBox(height: AppSizes.size1),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showBookingCancelation(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      builder: (BuildContext context) {
        return FractionallySizedBox(
          widthFactor: 1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.size20),
              color: AppColors.white,
            ),
            height: MediaQuery.of(context).size.height * 0.420,
            child: Column(
              children: [
                Column(
                  children: [
                    CustomSizedBox(height: AppSizes.size60),
                    CustomText(
                      text: "Cancel booking",
                      color: AppColors.black,
                      size: AppSizes.size18,
                      weight: FontWeight.w400,
                    ),
                    CustomSizedBox(height: AppSizes.size35),
                    CustomText(
                      align: TextAlign.center,
                      text: "Once you cancel a booking, it cannot be \n restored",
                      color: AppColors.grey,
                      size: AppSizes.size18,
                      weight: FontWeight.w400,
                    ),
                    CustomSizedBox(height: AppSizes.size10),
                    CustomSizedBox(height: AppSizes.size40),
                    GestureDetector(
                      onTap: () => Get.offAllNamed(AppRoutes.bookingCancellation),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.orange2,
                            borderRadius: BorderRadius.circular(AppSizes.size12),
                          ),
                          width: double.infinity,
                          height: AppSizes.size47,
                          child: Center(
                            child: CustomText(
                              text: 'cancel booking',
                              size: AppSizes.size18,
                              color: AppColors.black,
                              weight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ),
                    CustomSizedBox(height: AppSizes.size6),
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            border: Border.all(color: AppColors.grey035),
                            borderRadius: BorderRadius.circular(AppSizes.size12),
                          ),
                          width: double.infinity,
                          height: AppSizes.size47,
                          child: Center(
                            child: CustomText(
                              text: 'close ',
                              size: AppSizes.size18,
                              color: AppColors.black,
                              weight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
