import 'package:amti7ane_unicoding/controllers/BottomNavigation_controller.dart';
import 'package:amti7ane_unicoding/controllers/controller_main.dart';
import 'package:amti7ane_unicoding/models/buttom_nav.dart';
import 'package:amti7ane_unicoding/models/mytext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  BottomNavigationController navController =
      Get.put(BottomNavigationController());
  MainController mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return GetX<MainController>(
      builder: (mainController) {
        return Scaffold(
            //! / app bar
            appBar: AppBar(
              leading: mainController.whichLeading(),
              elevation: 0,
              title: Padding(
                padding: mainController.insub.value == true &&
                        navController
                                .buttomNavIcons[navController.index.value] ==
                            'Home'
                    ? const EdgeInsets.only(right: 56)
                    : EdgeInsets.zero,
                child: Center(
                  child: MyText(
                    myText:
                        navController.buttomNavIcons[navController.index.value],
                    mysize: 35,
                    family: 'Poppins',
                  ),
                ),
              ),
            ),
            //!bottomNavigationBar
            bottomNavigationBar: ButtomNav(),
            //! body
            body: mainController.whichScreen());
      },
    );
  }
}
