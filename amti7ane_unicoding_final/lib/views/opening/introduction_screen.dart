import 'package:amti7ane_unicoding/views/auth/mainScreen/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  final List<PageViewModel> pages = [
    PageViewModel(
      title: 'first page',
      body: 'Description',
      image: Image.asset('assets/images/introScreen1.png'),
      decoration: const PageDecoration(
        bodyTextStyle: TextStyle(fontSize: 15, color: Color(0xff979797)),
        titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    ),
    PageViewModel(
      title: 'secound page',
      body: 'Description',
      image: Center(
        child: Image.asset('assets/images/introScreen2.png'),
      ),
      decoration: const PageDecoration(
        bodyTextStyle: TextStyle(fontSize: 15, color: Color(0xff979797)),
        titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    ),
    PageViewModel(
      title: 'three page',
      body: 'Description',
      image: Center(
        child: Image.asset('assets/images/introScreen3.png'),
      ),
      decoration: const PageDecoration(
        bodyTextStyle: TextStyle(fontSize: 15, color: Color(0xff979797)),
        titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: IntroductionScreen(
        pages: pages,
        dotsDecorator: const DotsDecorator(
            size: Size(10, 10),
            color: Color(0xffD9D9D9),
            activeSize: Size.square(15),
            activeColor: Color(0xff870DFF)),
        showDoneButton: true,
        done: const Text(
          'Done',
          style: TextStyle(fontSize: 20, color: Color(0xff870DFF)),
        ),
        showSkipButton: true,
        skip: const Text('Skip',
            style: TextStyle(fontSize: 20, color: Color(0xff870DFF))),
        showNextButton: true,
        next: const Icon(Icons.arrow_forward, color: Color(0xff870DFF)),
        onDone: () => onDone(context),
        curve: Curves.bounceInOut,
      ),
    ));
  }

  void onDone(context) async {
    // final perfs = await SharedPreferences.getInstance();
    // await perfs.setBool('ON_BOARDING', false);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}
