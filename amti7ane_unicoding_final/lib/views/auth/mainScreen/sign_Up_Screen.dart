import 'package:amti7ane_unicoding/controllers/DropdownButtonController.dart';
import 'package:amti7ane_unicoding/controllers/ahmedController/email_Controller.dart';
import 'package:amti7ane_unicoding/models/AhmedModels/login_models.dart';
import 'package:amti7ane_unicoding/models/colors.dart';
import 'package:amti7ane_unicoding/views/auth/myTextField/my_Text_Field_Email.dart';
import 'package:amti7ane_unicoding/views/auth/myTextField/my_Text_Field_Name.dart';
import 'package:amti7ane_unicoding/views/auth/myTextField/my_Text_Field_Password.dart';
import 'package:amti7ane_unicoding/views/auth/my_Gender.dart';
import 'package:amti7ane_unicoding/views/auth/my_Stage.dart';
import 'package:amti7ane_unicoding/views/auth/textTitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    MyControllerAuth from = Get.find();
    DropdownButtonController dropController = Get.put(DropdownButtonController());
    return Scaffold(
      body: ListView(
        children: [
          Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                TextTitle(text: 'Sign Up', size: 40),
                MyTextFiledName(
                    text: 'Name', myPrefixIcon: Icons.person_outline),
                MyTextFiledEmail(text: 'Email Address'),
                MyTextFiledPass(text: 'Password'),
                MyTextFiledPass(text: 'Re-Enter Password'),
                MyGender(),
                MyStage(),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: (){
                    if (formKey.currentState!.validate()) {
                      login(from.emailController.text.toString(), from.passwordController.text.toString());
                  }
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    decoration: BoxDecoration(
                        color: MyColor.mainColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
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
