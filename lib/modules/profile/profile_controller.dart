import 'package:get/get.dart';
import 'package:flutter_application_1/data/models/review_model.dart';

class ProfileController extends GetxController {
  final reviews = <ReviewModel>[
    ReviewModel(name: 'СТАРШИЙ БАРБЕР', duration: '20 min', price: '400 ', comment: ''),
    ReviewModel(name: 'Тарас Яворницький', duration: '30 min', price: '350 ', comment: 'hbjhdbfrheiughurihgirhiureowjofwoefjejfeoifjeoijfoijeofoiejof'),
    ReviewModel(name: 'СТАРШИЙ БАРБЕР', duration: '20 min', price: '400 ', comment: ''),
    ReviewModel(name: 'Тарас Яворницький', duration: '30 min', price: '350 ', comment: ''),
    ReviewModel(name: 'СТАРШИЙ БАРБЕР', duration: '20 min', price: '400 ', comment: ''),
    ReviewModel(name: 'Тарас Яворницький', duration: '30 min', price: '350 ', comment: 'hbjhdbfrheiughurihgirhiureowjofwoefjejfeoifjeoijfoijeofoiejof'),
    ReviewModel(name: 'Тарас Яворницький', duration: '30 min', price: '350 ', comment: 'hbjhdbfrheiughurihgirhiureowjofwoefjejfeoifjeoijfoijeofoiejof'),
    ReviewModel(name: 'Тарас Яворницький', duration: '30 min', price: '350 ', comment: ''),
    ReviewModel(name: 'СТАРШИЙ БАРБЕР', duration: '20 min', price: '400 ', comment: ''),
    ReviewModel(name: 'СТАРШИЙ БАРБЕР', duration: '20 min', price: '400 ', comment: ''),
  ].obs;

  var displayedReviewsCount = 3.obs;

  void loadMoreReviews() {
    displayedReviewsCount.value += 2;
  }

  bool get hasMoreReviews => displayedReviewsCount.value < reviews.length;
}
