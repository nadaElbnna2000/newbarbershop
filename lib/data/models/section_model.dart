import 'package:flutter_application_1/data/models/service_model.dart';

class SectionModel {
  final String name;
  final List<ServiceModel> services;

  SectionModel({
    required this.name,
    required this.services,
  });

  factory SectionModel.fromJson(Map<String, dynamic> json) {
    return SectionModel(
      name: json['name'] ?? '',
      services: (json['services'] as List<dynamic>?)
              ?.map((s) => ServiceModel.fromJson(s))
              .toList() ??
          [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'services': services.map((s) => s.toJson()).toList(),
    };
  }
}
