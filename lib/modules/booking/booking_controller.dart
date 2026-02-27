import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/data/models/booking_model.dart';

class BookingController extends GetxController {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final commentController = TextEditingController();

  var isChecked = false.obs;
  var selectedReminderIndex = Rxn<int>();
  var selectedReminder = 'Per 1 hour'.obs;

  final services = <BookingServiceItem>[
    BookingServiceItem(name: 'Тарас Яворницький', duration: '30 min', price: '350 '),
    BookingServiceItem(name: 'СТАРШИЙ БАРБЕР', duration: '20 min', price: '400 '),
    BookingServiceItem(name: 'Тарас Яворницький', duration: '30 min', price: '350 '),
    BookingServiceItem(name: 'СТАРШИЙ БАРБЕР', duration: '20 min', price: '400 '),
  ].obs;

  final reminderSlots = <String>[
    'Per 1 hour',
    'Per 2 hour',
    'Per 3 hour',
    'Per 4 hour',
    'Per 5 hour',
    'Per 6 hour',
    'Per 9 hour',
    'Per 12 hour',
    'Per 15 hour',
    'Per 18 hour',
    'Per 21 hour',
    'Per 24 hour',
    'Per 2 days',
    'Per 3 days',
    'Per 5 days',
    'Per 7 days',
  ];

  int get totalPrice {
    return services.fold<int>(0, (sum, item) {
      int price = int.tryParse(item.price.replaceAll(RegExp(r'[^0-9]'), '')) ?? 0;
      return sum + price;
    });
  }

  void selectReminder(int index) {
    selectedReminderIndex.value = index;
    selectedReminder.value = reminderSlots[index];
  }

  @override
  void onClose() {
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    commentController.dispose();
    super.onClose();
  }
}
