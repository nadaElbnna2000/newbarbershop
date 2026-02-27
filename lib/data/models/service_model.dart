class ServiceModel {
  final String name;
  final String price;
  final String? duration;

  ServiceModel({
    required this.name,
    required this.price,
    this.duration,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      name: json['name'] ?? '',
      price: json['price'] ?? '',
      duration: json['duration'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
      'duration': duration,
    };
  }
}
