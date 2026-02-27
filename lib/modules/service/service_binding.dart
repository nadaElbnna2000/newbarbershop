import 'package:get/get.dart';
import 'package:flutter_application_1/modules/service/service_controller.dart';

class ServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ServiceController>(() => ServiceController());
  }
}
