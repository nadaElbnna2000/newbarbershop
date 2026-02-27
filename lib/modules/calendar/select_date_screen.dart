import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_application_1/core/constants/app_colors.dart';
import 'package:flutter_application_1/core/constants/app_sizes.dart';
import 'package:flutter_application_1/core/utils/app_routes.dart';
import 'package:flutter_application_1/widgets/custom_text.dart';
import 'package:flutter_application_1/widgets/custom_icon_button.dart';
import 'package:flutter_application_1/widgets/custom_sized_box.dart';
import 'package:flutter_application_1/widgets/custom_circle_avatar.dart';
import 'package:flutter_application_1/modules/calendar/calendar_controller.dart';

class SelectDateScreen extends StatelessWidget {
  const SelectDateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CalendarController>();

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
                    color: AppColors.grey,
                    size: AppSizes.size14,
                  ),
                ],
              ),
            ],
          ),
          CustomSizedBox(height: AppSizes.size40),
          Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => controller.isFirstOptionSelected.value = true,
                    child: Column(
                      children: [
                        CustomText(
                          text: 'CAMip Omap...',
                          size: AppSizes.size16,
                          color: AppColors.black,
                        ),
                        if (controller.isFirstOptionSelected.value)
                          Container(
                            margin: EdgeInsets.only(top: AppSizes.size4),
                            height: AppSizes.size1,
                            width: AppSizes.size170,
                            color: AppColors.orange2,
                          ),
                      ],
                    ),
                  ),
                  CustomSizedBox(width: AppSizes.size70),
                  GestureDetector(
                    onTap: () => controller.isFirstOptionSelected.value = false,
                    child: Column(
                      children: [
                        CustomText(
                          text: 'All specialists',
                          size: AppSizes.size16,
                          color: AppColors.black,
                        ),
                        if (!controller.isFirstOptionSelected.value)
                          Container(
                            margin: EdgeInsets.only(top: AppSizes.size4),
                            height: AppSizes.size1,
                            width: AppSizes.size170,
                            color: AppColors.orange2,
                          ),
                      ],
                    ),
                  ),
                ],
              )),
          CustomSizedBox(height: AppSizes.size20),
          Obx(() => TableCalendar(
                firstDay: DateTime.utc(2020, 1, 1),
                lastDay: DateTime.utc(2030, 12, 31),
                focusedDay: controller.focusedDay.value,
                selectedDayPredicate: (day) =>
                    isSameDay(controller.selectedDay.value, day),
                onDaySelected: controller.onDaySelected,
                calendarStyle: CalendarStyle(
                  selectedDecoration: BoxDecoration(
                    color: AppColors.orange2,
                    shape: BoxShape.circle,
                  ),
                  todayDecoration: BoxDecoration(
                    color: AppColors.yellow200,
                    shape: BoxShape.circle,
                  ),
                ),
                calendarFormat: controller.calendarFormat.value,
                onFormatChanged: controller.onFormatChanged,
                onPageChanged: controller.onPageChanged,
                calendarBuilders: CalendarBuilders(
                  defaultBuilder: (context, day, focusedDay) {
                    return Center(
                      child: Text(
                        '${day.day}',
                        style: const TextStyle(fontSize: 16),
                      ),
                    );
                  },
                ),
                headerStyle: const HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  leftChevronIcon: Icon(Icons.chevron_left),
                  rightChevronIcon: Icon(Icons.chevron_right),
                ),
              )),
          Obx(() {
            if (controller.showCustomDates) {
              return _buildCustomDates(controller);
            }
            return _buildDefaultWidgets();
          }),
          Obx(() {
            if (controller.hasSelectedSlot) {
              return GestureDetector(
                onTap: () => Get.toNamed(AppRoutes.bookingDetails),
                child: Padding(
                  padding: EdgeInsets.all(AppSizes.size16),
                  child: Container(
                    width: double.infinity,
                    height: AppSizes.size50,
                    decoration: BoxDecoration(
                      color: AppColors.orange2,
                      borderRadius: BorderRadius.circular(AppSizes.size14),
                    ),
                    child: Center(
                      child: CustomText(
                        text: 'Done',
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
    );
  }

  Widget _buildDefaultWidgets() {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(
            text: 'There are no available spots for',
            size: AppSizes.size20,
            color: AppColors.black,
            weight: FontWeight.bold,
          ),
          CustomText(
            text: 'this day',
            size: AppSizes.size20,
            color: AppColors.black,
            weight: FontWeight.bold,
          ),
          CustomSizedBox(height: AppSizes.size6),
          CustomText(
            text: 'Next available date:',
            size: AppSizes.size16,
            color: AppColors.grey,
          ),
          CustomText(
            text: 'Wednesday, 15 January',
            size: AppSizes.size16,
            color: AppColors.grey,
          ),
          CustomSizedBox(height: AppSizes.size35),
          Container(
            width: AppSizes.size170,
            height: AppSizes.size48,
            decoration: BoxDecoration(
              color: AppColors.orange2,
              borderRadius: BorderRadius.circular(AppSizes.size15),
            ),
            child: Center(
              child: CustomText(
                text: 'Open nearest date',
                color: AppColors.black,
                size: AppSizes.size14,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: AppSizes.size16),
            child: CustomText(
              text: 'Powered by Mas clients',
              size: AppSizes.size16,
              color: AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCustomDates(CalendarController controller) {
    return Expanded(
      child: Padding(
        padding:
            EdgeInsets.only(left: AppSizes.size16, right: AppSizes.size16),
        child: Obx(() => ListView.builder(
              itemCount: controller.shifts.length,
              itemBuilder: (context, index) {
                final shift = controller.shifts[index];
                return _buildSection(controller, shift.name, shift.timeSlots);
              },
            )),
      ),
    );
  }

  Widget _buildSection(
      CalendarController controller, String sectionName, List<String> timeSlots) {
    return Column(
      children: [
        Row(
          children: [
            CustomText(
              text: sectionName,
              size: AppSizes.size18,
            ),
            const Spacer(),
            Obx(() => CustomIconButton(
                  onPressed: () => controller.toggleSection(sectionName),
                  icon: (controller.sectionExpanded[sectionName] == true)
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                )),
          ],
        ),
        CustomSizedBox(height: AppSizes.size15),
        Obx(() {
          if (controller.sectionExpanded[sectionName] == true) {
            return CustomSizedBox(
              height: AppSizes.size110,
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 2.5,
                ),
                itemCount: timeSlots.length,
                itemBuilder: (context, index) {
                  final time = timeSlots[index];
                  return _buildTimeSlot(controller, time, sectionName);
                },
              ),
            );
          }
          return const SizedBox.shrink();
        }),
        CustomSizedBox(height: AppSizes.size15),
      ],
    );
  }

  Widget _buildTimeSlot(
      CalendarController controller, String time, String sectionName) {
    return GestureDetector(
      onTap: () => controller.selectTimeSlot(sectionName, time),
      child: Obx(() => Container(
            height: AppSizes.size10,
            margin: EdgeInsets.only(right: AppSizes.size8),
            padding: EdgeInsets.symmetric(
                horizontal: AppSizes.size20, vertical: AppSizes.size10),
            decoration: BoxDecoration(
              color: controller.isTimeSlotSelected(sectionName, time)
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
