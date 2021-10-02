import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_now/view/Screens/home_screen.dart';
import 'package:shopping_now/view/Screens/onboarding_screen.dart';
import 'package:shopping_now/view_model/auth_model.dart';

class AuthControl extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Obx(
        (){
          // ignore: unnecessary_null_comparison
          return (Get.find<AuthModel>().email != null) ? Home() : OnBoardingScreen() ;
        }
    );
  }
}
