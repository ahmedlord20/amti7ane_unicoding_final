import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardController extends GetxController {
  List<double> responsiveCard(double screenSize) {
    if (screenSize < 450) {
      return [
        160,
        135,
      ];
    } else {
      return [
        210,
        195,
      ];
    }
  }
}
