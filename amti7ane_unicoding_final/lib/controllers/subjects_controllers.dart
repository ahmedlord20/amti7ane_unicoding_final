import 'package:amti7ane_unicoding/models/card.dart';
import 'package:amti7ane_unicoding/models/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubjectsControllers extends GetxController {
//todo
  List<MyCard> subjects = [
    MyCard(
      firstText: 'ادب',
      secondText: 'فصول5',
      subjectIcon: AssetImage(
        'assets/images/subjects_icons/adab_icon.png',
      ),
    ),
    MyCard(
      firstText: 'فيزياء',
      secondText: 'فصول5',
      subjectIcon: AssetImage(
        'assets/images/subjects_icons/pysics_sub.png',
      ),
    ),
    MyCard(
      firstText: 'رياضيات',
      secondText: 'فصول5',
      subjectIcon: AssetImage(
        'assets/images/subjects_icons/math_sub.png',
      ),
    ),
    MyCard(
      firstText: 'احياء',
      secondText: 'فصول5',
      subjectIcon: AssetImage(
        'assets/images/subjects_icons/bio_sub.png',
      ),
    ),
    MyCard(
      firstText: 'كيمياء',
      secondText: 'فصول5',
      subjectIcon: AssetImage(
        'assets/images/subjects_icons/chemical_sub.png',
      ),
    ),
    MyCard(
      firstText: 'انكليزي',
      secondText: 'فصول5',
      subjectIcon: AssetImage(
        'assets/images/subjects_icons/english_sub.png',
      ),
    ),
    MyCard(
      firstText: 'فنيه',
      secondText: 'فصول5',
      subjectIcon: AssetImage(
        'assets/images/subjects_icons/art_sub.png',
      ),
    ),
    MyCard(
      firstText: 'جغرافيه',
      secondText: 'فصول5',
      subjectIcon: AssetImage(
        'assets/images/subjects_icons/geo_sub.png',
      ),
    ),
  ];
}
