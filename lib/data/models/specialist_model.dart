class SpecialistModel {
  final String name;
  final String title;
  final int reviews;
  final List<String> timeSlots;

  SpecialistModel({
    required this.name,
    required this.title,
    required this.reviews,
    required this.timeSlots,
  });

  factory SpecialistModel.fromJson(Map<String, dynamic> json) {
    return SpecialistModel(
      name: json['name'] ?? '',
      title: json['title'] ?? '',
      reviews: json['reviews'] ?? 0,
      timeSlots: List<String>.from(json['timeSlots'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'title': title,
      'reviews': reviews,
      'timeSlots': timeSlots,
    };
  }
}
