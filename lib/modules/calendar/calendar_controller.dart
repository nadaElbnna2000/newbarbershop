import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_application_1/data/models/shift_model.dart';

class CalendarController extends GetxController {
  var calendarFormat = CalendarFormat.month.obs;
  var focusedDay = DateTime.now().obs;
  var selectedDay = Rxn<DateTime>();
  var isFirstOptionSelected = true.obs;
  var selectedSlots = <String, String?>{
    'section': null,
    'time': null,
  }.obs;
  var sectionExpanded = <String, bool>{}.obs;

  final shifts = <ShiftModel>[
    ShiftModel(
      name: 'Morninig',
      timeSlots: ['9:00', '9:30', '10:00', '10:30', '11:00', '11:30', '12:30'],
    ),
    ShiftModel(
      name: 'Day',
      timeSlots: ['13:00', '13:30', '14:00', '14:30', '15:00', '15:30', '16:30', '16:30', '17:00', '17:30'],
    ),
    ShiftModel(
      name: 'Evening',
      timeSlots: ['18:00', '18:30', '19:00', '19:30', '20:00', '20:30', '21:00', '21:30', '22:00'],
    ),
  ].obs;

  @override
  void onInit() {
    super.onInit();
    for (var shift in shifts) {
      sectionExpanded[shift.name] = true;
    }
  }

  void onDaySelected(DateTime selected, DateTime focused) {
    selectedDay.value = selected;
    focusedDay.value = focused;
    selectedSlots['section'] = null;
    selectedSlots['time'] = null;
    selectedSlots.refresh();
  }

  void onFormatChanged(CalendarFormat format) {
    calendarFormat.value = format;
  }

  void onPageChanged(DateTime focused) {
    focusedDay.value = focused;
  }

  void toggleSection(String sectionName) {
    sectionExpanded[sectionName] = !(sectionExpanded[sectionName] ?? true);
    sectionExpanded.refresh();
  }

  void selectTimeSlot(String sectionName, String time) {
    selectedSlots['section'] = sectionName;
    selectedSlots['time'] = time;
    selectedSlots.refresh();
  }

  bool isTimeSlotSelected(String sectionName, String time) {
    return selectedSlots['section'] == sectionName &&
        selectedSlots['time'] == time;
  }

  bool get hasSelectedSlot => selectedSlots['section'] != null;

  bool get showCustomDates => (selectedDay.value?.day ?? 0) == 15;
}
