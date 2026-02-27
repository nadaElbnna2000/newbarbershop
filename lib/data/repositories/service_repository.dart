import 'package:flutter_application_1/data/models/section_model.dart';
import 'package:flutter_application_1/data/models/service_model.dart';
import 'package:flutter_application_1/data/providers/api_provider.dart';

class ServiceRepository {
  final ApiProvider apiProvider;

  ServiceRepository({required this.apiProvider});

  Future<List<ServiceModel>> getServices() async {
    final response = await apiProvider.getServices();
    if (response.statusCode == 200) {
      final List data = response.body['data'] ?? [];
      return data.map((json) => ServiceModel.fromJson(json)).toList();
    }
    return [];
  }

  Future<List<SectionModel>> getSections() async {
    final response = await apiProvider.getSections();
    if (response.statusCode == 200) {
      final List data = response.body['data'] ?? [];
      return data.map((json) => SectionModel.fromJson(json)).toList();
    }
    return [];
  }
}
