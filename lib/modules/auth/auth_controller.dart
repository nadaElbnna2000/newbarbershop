import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  var isChecked = false.obs;
  var isFirstOptionSelected = true.obs;

  // OTP
  var otpTimer = 60.obs;
  Timer? _countdownTimer;
  late List<FocusNode> focusNodes;
  late List<TextEditingController> otpControllers;

  // Language selection
  var selectedLanguage = 'English'.obs;
  var selectedLanguageIndex = 0.obs;

  final languages = <Map<String, dynamic>>[
    {"language": "English"},
    {"language": "Deutsch"},
    {"language": "Русский"},
    {"language": "العربية"},
    {"language": "Azərbaycan dili"},
    {"language": "Български"},
    {"language": "český jazyk"},
    {"language": "Dansk"},
    {"language": "Ελληνικά"},
    {"language": "Español"},
    {"language": "Eesti keel"},
    {"language": "Suomi"},
    {"language": "Français"},
    {"language": "עברית"},
    {"language": "Hrvatski jezik"},
    {"language": "Magyar nyelv"},
    {"language": "Հայերեն"},
    {"language": "Italiano"},
    {"language": "日本語"},
    {"language": "ქართული"},
    {"language": "қазақ тілі"},
    {"language": "Lietuvių kalba"},
    {"language": "Latviešu valoda"},
    {"language": "Монгол хэл"},
    {"language": "Polski"},
    {"language": "Português"},
    {"language": "Limba Română"},
    {"language": "Slovenský jazyk"},
    {"language": "Slovenski"},
    {"language": "Srpski jezik"},
    {"language": "Türkçe"},
    {"language": "Українська"},
    {"language": "Ўзбекча"},
    {"language": "中文"},
  ];

  @override
  void onInit() {
    super.onInit();
    focusNodes = List.generate(4, (index) => FocusNode());
    otpControllers = List.generate(4, (index) => TextEditingController());
  }

  void startCountdown() {
    otpTimer.value = 60;
    _countdownTimer?.cancel();
    const oneSec = Duration(seconds: 1);
    _countdownTimer = Timer.periodic(oneSec, (timer) {
      if (otpTimer.value > 0) {
        otpTimer.value--;
      } else {
        _countdownTimer?.cancel();
      }
    });
  }

  void selectLanguage(int index) {
    selectedLanguageIndex.value = index;
    selectedLanguage.value = languages[index]['language'];
  }

  @override
  void onClose() {
    _countdownTimer?.cancel();
    phoneController.dispose();
    passwordController.dispose();
    emailController.dispose();
    for (var focusNode in focusNodes) {
      focusNode.dispose();
    }
    for (var controller in otpControllers) {
      controller.dispose();
    }
    super.onClose();
  }
}
