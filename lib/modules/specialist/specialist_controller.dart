import 'package:get/get.dart';
import 'package:flutter_application_1/data/models/specialist_model.dart';

class SpecialistController extends GetxController {
  final specialists = <SpecialistModel>[
    SpecialistModel(
      name: 'Тарас Яворницький',
      title: 'СТАРШИЙ БАРБЕР',
      reviews: 55,
      timeSlots: ['9:00', '9:30', '10:00', '10:30', '11:00'],
    ),
    SpecialistModel(
      name: 'Андрей Грищенко',
      title: 'МЛАДШИЙ БАРБЕР',
      reviews: 32,
      timeSlots: ['10:00', '10:30', '11:00', '11:30', '12:00'],
    ),
    SpecialistModel(
      name: 'Игорь Смирнов',
      title: 'СТАРШИЙ БАРБЕР',
      reviews: 45,
      timeSlots: ['12:00', '12:30', '1:00', '1:30', '2:00'],
    ),
    SpecialistModel(
      name: 'tony',
      title: 'СТАРШИЙ БАРБЕР',
      reviews: 45,
      timeSlots: ['11:00', '12:30', '1:00', '2.00', '3:00'],
    ),
    SpecialistModel(
      name: 'hussien',
      title: 'СТАРШИЙ БАРБЕР',
      reviews: 45,
      timeSlots: ['14:00', '15:30', '17:00', '18:30', '19:00'],
    ),
    SpecialistModel(
      name: 'Игорь Смирнов',
      title: 'СТАРШИЙ БАРБЕР',
      reviews: 45,
      timeSlots: ['10:00', '14:30', '15:00', '17:30', '19:30'],
    ),
  ].obs;

  var selectedSpecialistIndex = Rxn<int>();
  var selectedTimeSlot = Rxn<String>();

  void selectSpecialist(int index) {
    selectedSpecialistIndex.value = index;
    selectedTimeSlot.value = null;
  }

  void selectTimeSlot(String time, int specialistIndex) {
    selectedSpecialistIndex.value = specialistIndex;
    selectedTimeSlot.value = time;
  }
}
