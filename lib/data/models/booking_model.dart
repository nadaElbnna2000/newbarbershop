class BookingModel {
  final String? specialistName;
  final String? specialistTitle;
  final String? date;
  final String? time;
  final List<BookingServiceItem> services;
  final String? name;
  final String? phone;
  final String? email;
  final String? comment;
  final String? reminder;

  BookingModel({
    this.specialistName,
    this.specialistTitle,
    this.date,
    this.time,
    this.services = const [],
    this.name,
    this.phone,
    this.email,
    this.comment,
    this.reminder,
  });

  factory BookingModel.fromJson(Map<String, dynamic> json) {
    return BookingModel(
      specialistName: json['specialistName'],
      specialistTitle: json['specialistTitle'],
      date: json['date'],
      time: json['time'],
      services: (json['services'] as List<dynamic>?)
              ?.map((s) => BookingServiceItem.fromJson(s))
              .toList() ??
          [],
      name: json['name'],
      phone: json['phone'],
      email: json['email'],
      comment: json['comment'],
      reminder: json['reminder'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'specialistName': specialistName,
      'specialistTitle': specialistTitle,
      'date': date,
      'time': time,
      'services': services.map((s) => s.toJson()).toList(),
      'name': name,
      'phone': phone,
      'email': email,
      'comment': comment,
      'reminder': reminder,
    };
  }
}

class BookingServiceItem {
  final String name;
  final String duration;
  final String price;

  BookingServiceItem({
    required this.name,
    required this.duration,
    required this.price,
  });

  factory BookingServiceItem.fromJson(Map<String, dynamic> json) {
    return BookingServiceItem(
      name: json['name'] ?? '',
      duration: json['duration'] ?? '',
      price: json['price'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'duration': duration,
      'price': price,
    };
  }
}
