import 'package:get/get.dart';
import 'package:flutter_application_1/modules/booking/booking_controller.dart';

class BookingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookingController>(() => BookingController());
  }
}
