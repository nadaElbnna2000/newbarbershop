import 'package:get/get.dart';


class ApiProvider extends GetConnect {
  static const String apiBaseUrl = 'https://your-api-url.com/api';

  @override
  void onInit() {
    httpClient.baseUrl = apiBaseUrl;
    httpClient.defaultContentType = 'application/json';
    httpClient.timeout = const Duration(seconds: 30);
    super.onInit();
  }

  // Specialists
  Future<Response> getSpecialists() => get('/specialists');
  Future<Response> getSpecialistById(String id) => get('/specialists/$id');

  // Services
  Future<Response> getServices() => get('/services');
  Future<Response> getSections() => get('/sections');

  // Bookings
  Future<Response> createBooking(Map<String, dynamic> body) =>
      post('/bookings', body);
  Future<Response> cancelBooking(String id) => delete('/bookings/$id');
  Future<Response> getBookingDetails(String id) => get('/bookings/$id');

  // Reviews
  Future<Response> getReviews(String specialistId) =>
      get('/specialists/$specialistId/reviews');
}
