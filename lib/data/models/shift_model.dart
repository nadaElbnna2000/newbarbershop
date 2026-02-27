class ShiftModel {
  final String name;
  final List<String> timeSlots;

  ShiftModel({
    required this.name,
    required this.timeSlots,
  });

  factory ShiftModel.fromJson(Map<String, dynamic> json) {
    return ShiftModel(
      name: json['name'] ?? '',
      timeSlots: List<String>.from(json['timeSlots'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'timeSlots': timeSlots,
    };
  }
}
