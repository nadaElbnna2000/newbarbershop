import 'package:flutter_application_1/data/models/booking_model.dart';
import 'package:flutter_application_1/data/providers/api_provider.dart';

class BookingRepository {
  final ApiProvider apiProvider;

  BookingRepository({required this.apiProvider});

  Future<BookingModel?> createBooking(BookingModel booking) async {
    final response = await apiProvider.createBooking(booking.toJson());
    if (response.statusCode == 200 || response.statusCode == 201) {
      return BookingModel.fromJson(response.body['data']);
    }
    return null;
  }

  Future<bool> cancelBooking(String id) async {
    final response = await apiProvider.cancelBooking(id);
    return response.statusCode == 200;
  }

  Future<BookingModel?> getBookingDetails(String id) async {
    final response = await apiProvider.getBookingDetails(id);
    if (response.statusCode == 200) {
      return BookingModel.fromJson(response.body['data']);
    }
    return null;
  }
}
