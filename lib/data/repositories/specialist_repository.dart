import 'package:flutter_application_1/data/models/specialist_model.dart';
import 'package:flutter_application_1/data/providers/api_provider.dart';

class SpecialistRepository {
  final ApiProvider apiProvider;

  SpecialistRepository({required this.apiProvider});

  Future<List<SpecialistModel>> getSpecialists() async {
    final response = await apiProvider.getSpecialists();
    if (response.statusCode == 200) {
      final List data = response.body['data'] ?? [];
      return data.map((json) => SpecialistModel.fromJson(json)).toList();
    }
    return [];
  }

  Future<SpecialistModel?> getSpecialistById(String id) async {
    final response = await apiProvider.getSpecialistById(id);
    if (response.statusCode == 200) {
      return SpecialistModel.fromJson(response.body['data']);
    }
    return null;
  }
}
