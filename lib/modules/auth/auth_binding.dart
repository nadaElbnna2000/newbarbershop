import 'package:get/get.dart';
import 'package:flutter_application_1/modules/auth/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
