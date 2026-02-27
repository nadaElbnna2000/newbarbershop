class ReviewModel {
  final String name;
  final String duration;
  final String price;
  final String comment;

  ReviewModel({
    required this.name,
    required this.duration,
    required this.price,
    required this.comment,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      name: json['name'] ?? '',
      duration: json['duration'] ?? '',
      price: json['price'] ?? '',
      comment: json['comment'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'duration': duration,
      'price': price,
      'comment': comment,
    };
  }
}
