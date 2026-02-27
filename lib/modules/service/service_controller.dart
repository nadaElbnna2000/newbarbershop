import 'package:get/get.dart';
import 'package:flutter_application_1/data/models/service_model.dart';
import 'package:flutter_application_1/data/models/section_model.dart';

class ServiceController extends GetxController {
  final sections = <SectionModel>[
    SectionModel(
      name: 'Старший Барбер',
      services: [
        ServiceModel(name: 'Стрижка', price: '500 ₴'),
        ServiceModel(name: 'Стрижка бороды', price: '300 ₴'),
        ServiceModel(name: 'Стрижка под одну насадку', price: '250 ₴'),
      ],
    ),
    SectionModel(
      name: 'Топ Барбер',
      services: [
        ServiceModel(name: 'Удаление волос воском', price: '150 ₴'),
        ServiceModel(name: 'Стрижка', price: '600 ₴'),
        ServiceModel(name: 'Стрижка под одну насадку/коррекция', price: '350 ₴'),
      ],
    ),
  ].obs;

  var selectedServices = <int, Set<int>>{}.obs;
  var isBottomSheetOpen = false.obs;
  var activeSectionIndex = Rxn<int>();

  double get totalPrice {
    double total = 0;
    selectedServices.forEach((sectionIndex, serviceIndices) {
      for (var serviceIndex in serviceIndices) {
        String priceString = sections[sectionIndex]
            .services[serviceIndex]
            .price
            .replaceAll('₴', '')
            .trim();
        double price = double.tryParse(priceString) ?? 0;
        total += price;
      }
    });
    return total;
  }

  int get totalSelectedServices {
    int count = 0;
    selectedServices.forEach((_, serviceIndices) {
      count += serviceIndices.length;
    });
    return count;
  }

  void toggleService(int sectionIndex, int serviceIndex) {
    activeSectionIndex.value ??= sectionIndex;
    selectedServices.putIfAbsent(sectionIndex, () => <int>{});

    if (selectedServices[sectionIndex]?.contains(serviceIndex) ?? false) {
      selectedServices[sectionIndex]?.remove(serviceIndex);
      if (selectedServices[sectionIndex]?.isEmpty ?? true) {
        activeSectionIndex.value = null;
      }
    } else {
      selectedServices[sectionIndex]?.add(serviceIndex);
    }
    selectedServices.refresh();
  }

  bool isServiceSelected(int sectionIndex, int serviceIndex) {
    return selectedServices[sectionIndex]?.contains(serviceIndex) ?? false;
  }

  bool isSectionLocked(int sectionIndex) {
    return activeSectionIndex.value != null &&
        activeSectionIndex.value != sectionIndex;
  }
}
