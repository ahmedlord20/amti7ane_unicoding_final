import 'package:amti7ane_unicoding/controllers/BottomNavigation_controller.dart';
import 'package:amti7ane_unicoding/controllers/CardController.dart';
import 'package:amti7ane_unicoding/controllers/controller_main.dart';
import 'package:amti7ane_unicoding/models/mytext.dart';
import 'package:amti7ane_unicoding/views/home/subjects_lectures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//!subjects card in home screen
class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.subjectIcon,
  });
  final String firstText;
  final String secondText;
  final AssetImage subjectIcon;

  @override
  Widget build(BuildContext context) {
    final MainController mainController = Get.find();
    final CardController cardController = Get.put(CardController());
    double scrrenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        mainController.insub.value = true;
      },
      child: Column(
        children: [
          Container(
            width: cardController.responsiveCard(scrrenWidth)[0],
            height: cardController.responsiveCard(scrrenWidth)[1],
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 10,
                  spreadRadius: 3,
                ),
              ],
            ),
            child: Row(
              children: [
                //!first elemnt
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MyText(
                        myText: firstText,
                        mysize: 17,
                        isbold: true,
                        family: 'SFMarwa',
                      ),
                      MyText(
                        family: 'SFMarwa',
                        myText: secondText,
                        mysize: 14,
                        mycolor: Colors.grey,
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
                //!second elemnt
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 10),
                        child: Image(
                          image: subjectIcon,
                          width: double.maxFinite,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
