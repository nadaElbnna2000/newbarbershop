import 'package:get/get.dart';
import 'package:flutter_application_1/modules/specialist/specialist_controller.dart';

class SpecialistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpecialistController>(() => SpecialistController());
  }
}
