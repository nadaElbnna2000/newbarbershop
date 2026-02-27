import 'package:get/get.dart';
import 'package:flutter_application_1/modules/calendar/calendar_controller.dart';

class CalendarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CalendarController>(() => CalendarController());
  }
}
