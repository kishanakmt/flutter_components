
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RatingBarController extends GetxController{

  late final ratingController;
  late double _rating;

  double _userRating = 3.0;
  int _ratingBarMode = 1;
  double _initialRating = 2.0;
  bool _isRTLMode = false;
  bool _isVertical = false;
  double percentage=0.5;

  IconData? _selectedIcon;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    ratingController = TextEditingController(text: '3.0');
    _rating = _initialRating;
  }

}